
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_base {int ref_cnt; int isa; } ;
typedef int heim_type_t ;
typedef int * heim_object_t ;


 int * BASE2PTR (struct heim_base*) ;
 struct heim_base* calloc (int,size_t) ;

heim_object_t
_heim_alloc_object(heim_type_t type, size_t size)
{

    struct heim_base *p = calloc(1, size + sizeof(*p));
    if (p == ((void*)0))
 return ((void*)0);
    p->isa = type;
    p->ref_cnt = 1;

    return BASE2PTR(p);
}
