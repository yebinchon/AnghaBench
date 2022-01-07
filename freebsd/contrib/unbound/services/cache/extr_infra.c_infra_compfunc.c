
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct infra_key {scalar_t__ namelen; int zonename; int addrlen; int addr; } ;


 int query_dname_compare (int ,int ) ;
 int sockaddr_cmp (int *,int ,int *,int ) ;

int
infra_compfunc(void* key1, void* key2)
{
 struct infra_key* k1 = (struct infra_key*)key1;
 struct infra_key* k2 = (struct infra_key*)key2;
 int r = sockaddr_cmp(&k1->addr, k1->addrlen, &k2->addr, k2->addrlen);
 if(r != 0)
  return r;
 if(k1->namelen != k2->namelen) {
  if(k1->namelen < k2->namelen)
   return -1;
  return 1;
 }
 return query_dname_compare(k1->zonename, k2->zonename);
}
