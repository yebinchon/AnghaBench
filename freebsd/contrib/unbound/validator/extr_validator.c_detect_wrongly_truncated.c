
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct reply_info {int ns_numrrsets; size_t an_numrrsets; TYPE_3__** rrsets; } ;
struct packed_rrset_data {scalar_t__ security; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {TYPE_2__ entry; TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 int VERB_ALGO ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ sec_status_secure ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
detect_wrongly_truncated(struct reply_info* rep)
{
 size_t i;

 if(rep->ns_numrrsets != 1 || rep->an_numrrsets == 0)
  return 0;
 if(ntohs(rep->rrsets[ rep->an_numrrsets ]->rk.type) != LDNS_RR_TYPE_NS)
  return 0;
 if(((struct packed_rrset_data*)rep->rrsets[ rep->an_numrrsets ]
  ->entry.data)->security == sec_status_secure)
  return 0;

 for(i=0; i<rep->an_numrrsets; i++) {
  if(((struct packed_rrset_data*)rep->rrsets[ i ]
   ->entry.data)->security != sec_status_secure)
   return 0;
 }
 verbose(VERB_ALGO, "truncating to minimal response");
 return 1;
}
