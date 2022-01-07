
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zone {int dummy; } ;
struct auth_data {size_t namelen; int * name; } ;


 struct auth_data* az_find_name (struct auth_zone*,int *,size_t) ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;

__attribute__((used)) static struct auth_data*
az_domain_go_up(struct auth_zone* z, struct auth_data* n)
{
 uint8_t* nm = n->name;
 size_t nmlen = n->namelen;
 while(!dname_is_root(nm)) {
  dname_remove_label(&nm, &nmlen);
  if((n=az_find_name(z, nm, nmlen)) != ((void*)0))
   return n;
 }
 return ((void*)0);
}
