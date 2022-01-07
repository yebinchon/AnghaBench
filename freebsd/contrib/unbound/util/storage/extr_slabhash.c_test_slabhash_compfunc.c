
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash_testkey {scalar_t__ id; } ;



int test_slabhash_compfunc(void* key1, void* key2)
{
 struct slabhash_testkey* k1 = (struct slabhash_testkey*)key1;
 struct slabhash_testkey* k2 = (struct slabhash_testkey*)key2;
 if(k1->id == k2->id)
  return 0;
 if(k1->id > k2->id)
  return 1;
 return -1;
}
