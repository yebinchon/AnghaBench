
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_alg_map {int halg; char const* hname; } ;


 struct hash_alg_map* hash_algs ;

__attribute__((used)) static const char *
get_hname(int hash_alg)
{
 struct hash_alg_map *hmp;

 for (hmp = hash_algs; hmp->halg > 0; hmp++) {
  if (hmp->halg == hash_alg)
   return (hmp->hname);
 }
 return (((void*)0));
}
