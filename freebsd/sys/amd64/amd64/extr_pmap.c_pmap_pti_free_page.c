
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_5__ {scalar_t__ ref_count; } ;


 int KASSERT (int,char*) ;
 int vm_page_free_zero (TYPE_1__*) ;
 int vm_page_unwire_noq (TYPE_1__*) ;

__attribute__((used)) static bool
pmap_pti_free_page(vm_page_t m)
{

 KASSERT(m->ref_count > 0, ("page %p not referenced", m));
 if (!vm_page_unwire_noq(m))
  return (0);
 vm_page_free_zero(m);
 return (1);
}
