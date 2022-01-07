
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_cache {int table; } ;


 int slabhash_delete (int *) ;

void rrset_cache_delete(struct rrset_cache* r)
{
 if(!r)
  return;
 slabhash_delete(&r->table);

}
