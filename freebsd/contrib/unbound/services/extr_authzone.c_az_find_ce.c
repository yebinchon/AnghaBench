
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {scalar_t__ qtype; scalar_t__ qname_len; } ;
struct auth_zone {scalar_t__ namelen; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {scalar_t__ namelen; } ;


 int LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_NS ;
 struct auth_data* az_domain_go_up (struct auth_zone*,struct auth_data*) ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_candidate_ce (struct auth_zone*,struct query_info*,struct auth_data*) ;
 scalar_t__ domain_has_only_nsec3 (struct auth_data*) ;

__attribute__((used)) static int
az_find_ce(struct auth_zone* z, struct query_info* qinfo,
 struct auth_data* node, int node_exact, struct auth_data** ce,
 struct auth_rrset** rrset)
{
 struct auth_data* n = node;
 *ce = ((void*)0);
 *rrset = ((void*)0);
 if(!node_exact) {

  n = az_find_candidate_ce(z, qinfo, n);
 } else {

  *ce = n;
 }


 if(n && domain_has_only_nsec3(n)) {
  node_exact = 0;
  *ce = ((void*)0);
 }



 while(n) {


  if(n->namelen != z->namelen &&
   (*rrset=az_domain_rrset(n, LDNS_RR_TYPE_NS)) &&

   (qinfo->qtype != LDNS_RR_TYPE_DS ||
   n->namelen != qinfo->qname_len)) {


   *ce = n;
   return 0;
  }

  if(n->namelen != qinfo->qname_len &&
   (*rrset=az_domain_rrset(n, LDNS_RR_TYPE_DNAME))) {

   *ce = n;
   return 0;
  }

  if(*ce == ((void*)0) && !domain_has_only_nsec3(n)) {


   *ce = n;
  }


  n = az_domain_go_up(z, n);
 }

 return node_exact;
}
