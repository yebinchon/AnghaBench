
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; scalar_t__ qclass; int * qname; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 int get_cname_target (struct ub_packed_rrset_key*,int **,size_t*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

struct ub_packed_rrset_key*
reply_find_answer_rrset(struct query_info* qinfo, struct reply_info* rep)
{
 uint8_t* sname = qinfo->qname;
 size_t snamelen = qinfo->qname_len;
 size_t i;
 for(i=0; i<rep->an_numrrsets; i++) {
  struct ub_packed_rrset_key* s = rep->rrsets[i];

  if(ntohs(s->rk.type) == qinfo->qtype &&
   ntohs(s->rk.rrset_class) == qinfo->qclass &&
   snamelen == s->rk.dname_len &&
   query_dname_compare(sname, s->rk.dname) == 0) {
   return s;
  }

  if(ntohs(s->rk.type) == LDNS_RR_TYPE_CNAME &&
   ntohs(s->rk.rrset_class) == qinfo->qclass &&
   snamelen == s->rk.dname_len &&
   query_dname_compare(sname, s->rk.dname) == 0) {
   get_cname_target(s, &sname, &snamelen);
  }
 }
 return ((void*)0);
}
