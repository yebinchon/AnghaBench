
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_9__ {scalar_t__ l_ui; scalar_t__ l_uf; } ;
typedef TYPE_1__ l_fp ;


 scalar_t__ ADJ_MAXOVERSHOOT ;
 int LOG_ERR ;
 int L_ADD (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ L_ISNEG (TYPE_1__*) ;
 int L_NEG (TYPE_1__*) ;
 int L_RSHIFTU (TYPE_1__*) ;
 int TSTOTV (TYPE_1__*,struct timeval*) ;
 scalar_t__ adjtime (struct timeval*,struct timeval*) ;
 int debug ;
 int exit (int) ;
 int msyslog (int ,char*) ;
 int printf (char*) ;

__attribute__((used)) static int
l_adj_systime(
 l_fp *ts
 )
{
 struct timeval adjtv, oadjtv;
 int isneg = 0;
 l_fp offset;

 l_fp overshoot;





 offset = *ts;
 if (L_ISNEG(&offset)) {
  isneg = 1;
  L_NEG(&offset);
 }






 overshoot = offset;
 L_RSHIFTU(&overshoot);
 if (overshoot.l_ui != 0 || (overshoot.l_uf > ADJ_MAXOVERSHOOT)) {
  overshoot.l_ui = 0;
  overshoot.l_uf = ADJ_MAXOVERSHOOT;
 }
 L_ADD(&offset, &overshoot);

 TSTOTV(&offset, &adjtv);

 if (isneg) {
  adjtv.tv_sec = -adjtv.tv_sec;
  adjtv.tv_usec = -adjtv.tv_usec;
 }

 if (!debug && (adjtv.tv_usec != 0)) {



  if (adjtime(&adjtv, &oadjtv) < 0) {
   msyslog(LOG_ERR, "Can't adjust the time of day: %m");
   exit(1);
  }
 }
 return 1;
}
