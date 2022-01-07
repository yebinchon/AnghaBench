
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct query_info {size_t qname_len; int * qname; } ;
struct auth_zone {size_t namelen; int name; } ;
struct auth_data {size_t namelen; } ;


 struct auth_data* az_find_wildcard_domain (struct auth_zone*,int *,size_t) ;
 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 int dname_subdomain_c (int *,int ) ;

__attribute__((used)) static struct auth_data*
az_find_wildcard(struct auth_zone* z, struct query_info* qinfo,
 struct auth_data* ce)
{
 uint8_t* nm = qinfo->qname;
 size_t nmlen = qinfo->qname_len;
 struct auth_data* node;
 if(!dname_subdomain_c(nm, z->name))
  return ((void*)0);
 while((node=az_find_wildcard_domain(z, nm, nmlen))==((void*)0)) {

  if(nmlen == z->namelen)
   return ((void*)0);
  if(ce && nmlen == ce->namelen)
   return ((void*)0);
  if(dname_is_root(nm))
   return ((void*)0);
  dname_remove_label(&nm, &nmlen);
 }
 return node;
}
