
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
struct val_env {scalar_t__ date_override; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
typedef int origttl ;
typedef scalar_t__ int32_t ;
typedef int incep ;
typedef int expi ;


 scalar_t__ MIN_TTL ;
 int VERB_ALGO ;
 int VERB_QUERY ;
 int memmove (scalar_t__*,int *,int) ;
 scalar_t__ ntohl (scalar_t__) ;
 int verbose (int ,char*) ;

__attribute__((used)) static void
adjust_ttl(struct val_env* ve, uint32_t unow,
 struct ub_packed_rrset_key* rrset, uint8_t* orig_p,
 uint8_t* expi_p, uint8_t* incep_p)
{
 struct packed_rrset_data* d =
  (struct packed_rrset_data*)rrset->entry.data;

 int32_t origttl, expittl, expi, incep, now;
 memmove(&origttl, orig_p, sizeof(origttl));
 memmove(&expi, expi_p, sizeof(expi));
 memmove(&incep, incep_p, sizeof(incep));
 expi = ntohl(expi);
 incep = ntohl(incep);
 origttl = ntohl(origttl);


 if(ve->date_override) {
  now = ve->date_override;
 } else now = (int32_t)unow;
 expittl = expi - now;
 if(MIN_TTL > (time_t)origttl && d->ttl > MIN_TTL) {
  verbose(VERB_QUERY, "rrset TTL larger than original and minimum"
   " TTL, adjusting TTL downwards to minimum ttl");
  d->ttl = MIN_TTL;
 }
 else if(MIN_TTL <= origttl && d->ttl > (time_t)origttl) {
  verbose(VERB_QUERY, "rrset TTL larger than original TTL, "
  "adjusting TTL downwards to original ttl");
  d->ttl = origttl;
 }

 if(expittl > 0 && d->ttl > (time_t)expittl) {
  verbose(VERB_ALGO, "rrset TTL larger than sig expiration ttl,"
   " adjusting TTL downwards");
  d->ttl = expittl;
 }
}
