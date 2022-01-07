
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct heim_base_mem {int ref_cnt; char const* name; int dealloc; int * isa; } ;
typedef int heim_type_dealloc ;


 void* BASE2PTR (struct heim_base_mem*) ;
 struct heim_base_mem* calloc (int,size_t) ;
 int memory_object ;

void *
heim_alloc(size_t size, const char *name, heim_type_dealloc dealloc)
{


    struct heim_base_mem *p = calloc(1, size + sizeof(*p));
    if (p == ((void*)0))
 return ((void*)0);
    p->isa = &memory_object;
    p->ref_cnt = 1;
    p->name = name;
    p->dealloc = dealloc;
    return BASE2PTR(p);
}
