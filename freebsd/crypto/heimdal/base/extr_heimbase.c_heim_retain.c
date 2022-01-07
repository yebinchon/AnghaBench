
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_base {scalar_t__ ref_cnt; } ;


 struct heim_base* PTR2BASE (void*) ;
 int heim_abort (char*) ;
 int heim_base_atomic_inc (scalar_t__*) ;
 scalar_t__ heim_base_atomic_max ;
 scalar_t__ heim_base_is_tagged (void*) ;

void *
heim_retain(void *ptr)
{
    struct heim_base *p = PTR2BASE(ptr);

    if (ptr == ((void*)0) || heim_base_is_tagged(ptr))
 return ptr;

    if (p->ref_cnt == heim_base_atomic_max)
 return ptr;

    if ((heim_base_atomic_inc(&p->ref_cnt) - 1) == 0)
 heim_abort("resurection");
    return ptr;
}
