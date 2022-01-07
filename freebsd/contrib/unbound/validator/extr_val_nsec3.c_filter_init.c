
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int * dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qclass; scalar_t__ qtype; int * qname; } ;
struct nsec3_filter {size_t zone_len; size_t num; scalar_t__ fclass; int * zone; struct ub_packed_rrset_key** list; } ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_subdomain_c (int *,int *) ;
 int nsec3_rrset_has_known (struct ub_packed_rrset_key*) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int *) ;

__attribute__((used)) static void
filter_init(struct nsec3_filter* filter, struct ub_packed_rrset_key** list,
 size_t num, struct query_info* qinfo)
{
 size_t i;
 uint8_t* nm;
 size_t nmlen;
 filter->zone = ((void*)0);
 filter->zone_len = 0;
 filter->list = list;
 filter->num = num;
 filter->fclass = qinfo->qclass;
 for(i=0; i<num; i++) {

  if(ntohs(list[i]->rk.type) != LDNS_RR_TYPE_NSEC3 ||
   ntohs(list[i]->rk.rrset_class) != qinfo->qclass)
   continue;

  if(!nsec3_rrset_has_known(list[i]))
   continue;



  nm = list[i]->rk.dname;
  nmlen = list[i]->rk.dname_len;
  dname_remove_label(&nm, &nmlen);


  if(dname_subdomain_c(qinfo->qname, nm) && (!filter->zone ||
   dname_subdomain_c(nm, filter->zone))) {

   if(qinfo->qtype == LDNS_RR_TYPE_DS &&
    query_dname_compare(qinfo->qname, nm) == 0 &&
    !dname_is_root(qinfo->qname))
    continue;
   filter->zone = nm;
   filter->zone_len = nmlen;
  }
 }
}
