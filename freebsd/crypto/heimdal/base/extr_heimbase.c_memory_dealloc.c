
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_base_mem {int (* dealloc ) (void*) ;} ;


 scalar_t__ PTR2BASE (void*) ;
 int stub1 (void*) ;

__attribute__((used)) static void
memory_dealloc(void *ptr)
{
    struct heim_base_mem *p = (struct heim_base_mem *)PTR2BASE(ptr);
    if (p->dealloc)
 p->dealloc(ptr);
}
