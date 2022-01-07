
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {int * qname; } ;
struct auth_zone {int dummy; } ;
struct auth_data {int name; } ;


 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;
 int dname_count_size_labels (int *,size_t*) ;
 int * dname_get_shared_topdomain (int *,int ) ;
 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;

__attribute__((used)) static struct auth_data*
az_find_candidate_ce(struct auth_zone* z, struct query_info* qinfo,
 struct auth_data* n)
{
 uint8_t* nm;
 size_t nmlen;
 if(n) {
  nm = dname_get_shared_topdomain(qinfo->qname, n->name);
 } else {
  nm = qinfo->qname;
 }
 dname_count_size_labels(nm, &nmlen);
 n = az_find_name(z, nm, nmlen);

 while(!n) {
  if(dname_is_root(nm))
   return ((void*)0);
  dname_remove_label(&nm, &nmlen);
  n = az_find_name(z, nm, nmlen);
 }
 return n;
}
