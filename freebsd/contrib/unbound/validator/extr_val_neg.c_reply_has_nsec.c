
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reply_info {scalar_t__ security; size_t an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; } ;
struct packed_rrset_data {scalar_t__ security; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__ entry; TYPE_3__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ sec_status_secure ;

__attribute__((used)) static int reply_has_nsec(struct reply_info* rep)
{
 size_t i;
 struct packed_rrset_data* d;
 if(rep->security != sec_status_secure)
  return 0;
 for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NSEC) {
   d = (struct packed_rrset_data*)rep->rrsets[i]->
    entry.data;
   if(d->security == sec_status_secure)
    return 1;
  }
 }
 return 0;
}
