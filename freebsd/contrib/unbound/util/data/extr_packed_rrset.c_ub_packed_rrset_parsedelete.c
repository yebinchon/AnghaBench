
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dname; } ;
struct TYPE_3__ {int * data; } ;
struct ub_packed_rrset_key {scalar_t__ id; TYPE_2__ rk; TYPE_1__ entry; } ;
struct alloc_cache {int dummy; } ;


 int alloc_special_release (struct alloc_cache*,struct ub_packed_rrset_key*) ;
 int free (int *) ;

void
ub_packed_rrset_parsedelete(struct ub_packed_rrset_key* pkey,
        struct alloc_cache* alloc)
{
 if(!pkey)
  return;
 free(pkey->entry.data);
 pkey->entry.data = ((void*)0);
 free(pkey->rk.dname);
 pkey->rk.dname = ((void*)0);
 pkey->id = 0;
 alloc_special_release(alloc, pkey);
}
