
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct query_info {scalar_t__ qtype; int qname_len; int qname; } ;
struct delegpt_ns {int name; scalar_t__ resolved; struct delegpt_ns* next; } ;
struct delegpt {int name; struct delegpt_ns* nslist; scalar_t__ result_list; scalar_t__ usable_list; } ;


 int BIT_RD ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ delegpt_find_ns (struct delegpt*,int ,int ) ;
 scalar_t__ dname_subdomain_c (int ,int ) ;

int
iter_dp_is_useless(struct query_info* qinfo, uint16_t qflags,
 struct delegpt* dp)
{
 struct delegpt_ns* ns;
 if(!(qflags&BIT_RD))
  return 0;

 if(dp->usable_list || dp->result_list)
  return 0;


 if( (qinfo->qtype == LDNS_RR_TYPE_A ||
  qinfo->qtype == LDNS_RR_TYPE_AAAA) &&
  dname_subdomain_c(qinfo->qname, dp->name) &&
  delegpt_find_ns(dp, qinfo->qname, qinfo->qname_len))
  return 1;

 for(ns = dp->nslist; ns; ns = ns->next) {
  if(ns->resolved)
   continue;
  if(!dname_subdomain_c(ns->name, dp->name))
   return 0;
 }
 return 1;
}
