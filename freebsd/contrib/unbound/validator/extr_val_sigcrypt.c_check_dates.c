
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct val_env {int date_override; int skew_min; int skew_max; } ;
typedef int incep ;
typedef int expi ;


 int VERB_ALGO ;
 scalar_t__ compare_1918 (int,int) ;
 int memmove (int*,int *,int) ;
 int ntohl (int) ;
 int sigdate_error (char*,int,int,int) ;
 int subtract_1918 (int,int) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static int
check_dates(struct val_env* ve, uint32_t unow,
 uint8_t* expi_p, uint8_t* incep_p, char** reason)
{

 uint32_t expi, incep, now;
 memmove(&expi, expi_p, sizeof(expi));
 memmove(&incep, incep_p, sizeof(incep));
 expi = ntohl(expi);
 incep = ntohl(incep);


 if(ve->date_override) {
  if(ve->date_override == -1) {
   verbose(VERB_ALGO, "date override: ignore date");
   return 1;
  }
  now = ve->date_override;
  verbose(VERB_ALGO, "date override option %d", (int)now);
 } else now = unow;


 if(compare_1918(incep, expi) > 0) {
  sigdate_error("verify: inception after expiration, "
   "signature bad", expi, incep, now);
  *reason = "signature inception after expiration";
  return 0;
 }
 if(compare_1918(incep, now) > 0) {

  uint32_t skew = subtract_1918(incep, expi)/10;
  if(skew < (uint32_t)ve->skew_min) skew = ve->skew_min;
  if(skew > (uint32_t)ve->skew_max) skew = ve->skew_max;
  if(subtract_1918(now, incep) > skew) {
   sigdate_error("verify: signature bad, current time is"
    " before inception date", expi, incep, now);
   *reason = "signature before inception date";
   return 0;
  }
  sigdate_error("verify warning suspicious signature inception "
   " or bad local clock", expi, incep, now);
 }
 if(compare_1918(now, expi) > 0) {
  uint32_t skew = subtract_1918(incep, expi)/10;
  if(skew < (uint32_t)ve->skew_min) skew = ve->skew_min;
  if(skew > (uint32_t)ve->skew_max) skew = ve->skew_max;
  if(subtract_1918(expi, now) > skew) {
   sigdate_error("verify: signature expired", expi,
    incep, now);
   *reason = "signature expired";
   return 0;
  }
  sigdate_error("verify warning suspicious signature expiration "
   " or bad local clock", expi, incep, now);
 }
 return 1;
}
