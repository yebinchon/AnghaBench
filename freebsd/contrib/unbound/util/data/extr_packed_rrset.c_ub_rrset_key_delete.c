
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; scalar_t__ id; } ;
struct alloc_cache {int dummy; } ;


 int alloc_special_release (struct alloc_cache*,struct ub_packed_rrset_key*) ;
 int free (int *) ;

void
ub_rrset_key_delete(void* key, void* userdata)
{
 struct ub_packed_rrset_key* k = (struct ub_packed_rrset_key*)key;
 struct alloc_cache* a = (struct alloc_cache*)userdata;
 k->id = 0;
 free(k->rk.dname);
 k->rk.dname = ((void*)0);
 alloc_special_release(a, k);
}
