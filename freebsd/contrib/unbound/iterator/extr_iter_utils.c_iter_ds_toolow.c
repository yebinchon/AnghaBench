
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int type; int * dname; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; } ;
struct TYPE_5__ {int qname; } ;
struct dns_msg {TYPE_2__ qinfo; TYPE_1__* rep; } ;
struct delegpt {int * name; } ;
struct TYPE_4__ {size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ dname_subdomain_c (int *,int ) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int *) ;
 int val_find_rrset_signer (struct ub_packed_rrset_key*,int **,size_t*) ;

int
iter_ds_toolow(struct dns_msg* msg, struct delegpt* dp)
{


 size_t i;


 for(i=0; i < msg->rep->an_numrrsets; i++) {
  struct ub_packed_rrset_key* s = msg->rep->rrsets[i];
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_DNAME ||
   ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME) {



   uint8_t* sname;
   size_t slen;
   val_find_rrset_signer(s, &sname, &slen);
   if(sname && query_dname_compare(dp->name, sname)==0)
    return 0;
   return 1;
  }
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_DS)
   return 0;
 }
 for(i=msg->rep->an_numrrsets;
  i < msg->rep->an_numrrsets + msg->rep->ns_numrrsets; i++) {
  struct ub_packed_rrset_key* s = msg->rep->rrsets[i];
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_SOA) {
   if(dname_subdomain_c(s->rk.dname, msg->qinfo.qname))
    return 1;
   if(query_dname_compare(s->rk.dname, dp->name)==0)
    return 0;
  }
  if(ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC ||
   ntohs(s->rk.type) == LDNS_RR_TYPE_NSEC3) {
   uint8_t* sname;
   size_t slen;
   val_find_rrset_signer(s, &sname, &slen);
   if(sname && query_dname_compare(dp->name, sname)==0)
    return 0;
   return 1;
  }
 }

 return 1;
}
