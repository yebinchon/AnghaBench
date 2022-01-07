
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* heim_type_t ;
typedef int heim_type_init ;
typedef int heim_type_hash ;
typedef int heim_type_dealloc ;
typedef int heim_type_copy ;
typedef int heim_type_cmp ;
struct TYPE_4__ {char const* name; int hash; int cmp; int copy; int dealloc; int init; int tid; } ;


 TYPE_1__* calloc (int,int) ;
 int heim_base_atomic_inc (int *) ;
 int tidglobal ;

heim_type_t
_heim_create_type(const char *name,
    heim_type_init init,
    heim_type_dealloc dealloc,
    heim_type_copy copy,
    heim_type_cmp cmp,
    heim_type_hash hash)
{
    heim_type_t type;

    type = calloc(1, sizeof(*type));
    if (type == ((void*)0))
 return ((void*)0);

    type->tid = heim_base_atomic_inc(&tidglobal);
    type->name = name;
    type->init = init;
    type->dealloc = dealloc;
    type->copy = copy;
    type->cmp = cmp;
    type->hash = hash;

    return type;
}
