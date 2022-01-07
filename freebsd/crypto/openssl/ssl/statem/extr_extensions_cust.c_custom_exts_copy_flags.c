
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t meths_count; TYPE_2__* meths; } ;
typedef TYPE_1__ custom_ext_methods ;
struct TYPE_8__ {int ext_flags; int ext_type; int role; } ;
typedef TYPE_2__ custom_ext_method ;


 TYPE_2__* custom_ext_find (TYPE_1__*,int ,int ,int *) ;

int custom_exts_copy_flags(custom_ext_methods *dst,
                           const custom_ext_methods *src)
{
    size_t i;
    custom_ext_method *methsrc = src->meths;

    for (i = 0; i < src->meths_count; i++, methsrc++) {
        custom_ext_method *methdst = custom_ext_find(dst, methsrc->role,
                                                     methsrc->ext_type, ((void*)0));

        if (methdst == ((void*)0))
            continue;

        methdst->ext_flags = methsrc->ext_flags;
    }

    return 1;
}
