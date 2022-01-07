
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {size_t qname_len; int * qname; } ;
struct nsec3_filter {int zone; } ;
struct module_env {int dummy; } ;
struct ce_response {size_t ce_len; int * ce; int ce_rr; int ce_rrset; } ;
typedef int rbtree_type ;


 int dname_remove_label (int **,size_t*) ;
 scalar_t__ dname_subdomain_c (int *,int ) ;
 scalar_t__ find_matching_nsec3 (struct module_env*,struct nsec3_filter*,int *,int *,size_t,int *,int *) ;

__attribute__((used)) static int
nsec3_find_closest_encloser(struct module_env* env, struct nsec3_filter* flt,
 rbtree_type* ct, struct query_info* qinfo, struct ce_response* ce)
{
 uint8_t* nm = qinfo->qname;
 size_t nmlen = qinfo->qname_len;
 while(dname_subdomain_c(nm, flt->zone)) {
  if(find_matching_nsec3(env, flt, ct, nm, nmlen,
   &ce->ce_rrset, &ce->ce_rr)) {
   ce->ce = nm;
   ce->ce_len = nmlen;
   return 1;
  }
  dname_remove_label(&nm, &nmlen);
 }
 return 0;
}
