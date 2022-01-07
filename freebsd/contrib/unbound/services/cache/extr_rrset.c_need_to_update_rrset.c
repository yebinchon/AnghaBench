
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ trust; scalar_t__ ttl; size_t count; size_t rrsig_count; scalar_t__* rr_ttl; } ;


 scalar_t__ sec_status_bogus ;
 scalar_t__ sec_status_secure ;

__attribute__((used)) static int
need_to_update_rrset(void* nd, void* cd, time_t timenow, int equal, int ns)
{
 struct packed_rrset_data* newd = (struct packed_rrset_data*)nd;
 struct packed_rrset_data* cached = (struct packed_rrset_data*)cd;



 if( newd->security == sec_status_secure &&
  cached->security != sec_status_secure)
  return 1;
 if( cached->security == sec_status_bogus &&
  newd->security != sec_status_bogus && !equal)
  return 1;

        if( newd->trust > cached->trust ) {


  if(equal && cached->ttl >= timenow &&
   cached->security == sec_status_bogus)
   return 0;
                return 1;
 }

 if( cached->ttl < timenow )
  return 1;

 if( newd->trust == cached->trust && !equal ) {




  if(ns) {
   size_t i;
   newd->ttl = cached->ttl;
   for(i=0; i<(newd->count+newd->rrsig_count); i++)
    if(newd->rr_ttl[i] > newd->ttl)
     newd->rr_ttl[i] = newd->ttl;
  }
  return 1;
 }
 return 0;
}
