
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; int flags; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static int
positive_answer(struct reply_info* rep, uint16_t qtype) {
 size_t i;
 if (FLAGS_GET_RCODE(rep->flags) != LDNS_RCODE_NOERROR)
  return 0;

 for(i=0;i<rep->an_numrrsets; i++) {
  if(ntohs(rep->rrsets[i]->rk.type) == qtype) {



   for(i=rep->an_numrrsets; i<rep->an_numrrsets+
    rep->ns_numrrsets; i++) {
    if(ntohs(rep->rrsets[i]->rk.type) ==
     LDNS_RR_TYPE_NSEC ||
       ntohs(rep->rrsets[i]->rk.type) ==
        LDNS_RR_TYPE_NSEC3)
     return 0;
   }
   return 1;
  }
 }
 return 0;
}
