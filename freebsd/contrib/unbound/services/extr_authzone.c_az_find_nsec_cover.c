
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zone {size_t namelen; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {size_t namelen; int * name; } ;


 int LDNS_RR_TYPE_NSEC ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;
 scalar_t__ dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;

__attribute__((used)) static struct auth_rrset*
az_find_nsec_cover(struct auth_zone* z, struct auth_data** node)
{
 uint8_t* nm = (*node)->name;
 size_t nmlen = (*node)->namelen;
 struct auth_rrset* rrset;
 while((rrset=az_domain_rrset(*node, LDNS_RR_TYPE_NSEC)) == ((void*)0)) {
  if(dname_is_root(nm)) return ((void*)0);
  if(nmlen == z->namelen) return ((void*)0);
  dname_remove_label(&nm, &nmlen);

  *node = az_find_name(z, nm, nmlen);
 }
 return rrset;
}
