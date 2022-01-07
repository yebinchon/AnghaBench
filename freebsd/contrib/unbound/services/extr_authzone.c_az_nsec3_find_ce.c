
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct auth_zone {size_t namelen; } ;
struct auth_data {int dummy; } ;


 struct auth_data* az_nsec3_find_exact (struct auth_zone*,int *,size_t,int,size_t,int *,size_t) ;
 int dname_remove_label (int **,size_t*) ;

__attribute__((used)) static struct auth_data*
az_nsec3_find_ce(struct auth_zone* z, uint8_t** cenm, size_t* cenmlen,
 int* no_exact_ce, int algo, size_t iter, uint8_t* salt, size_t saltlen)
{
 struct auth_data* node;
 while((node = az_nsec3_find_exact(z, *cenm, *cenmlen,
  algo, iter, salt, saltlen)) == ((void*)0)) {
  if(*cenmlen == z->namelen) {

   return ((void*)0);
  }
  *no_exact_ce = 1;
  dname_remove_label(cenm, cenmlen);
 }
 return node;
}
