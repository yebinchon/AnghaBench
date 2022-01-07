
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long (* hash_func ) (int ) ;} ;
struct TYPE_4__ {unsigned long type; int name; } ;
typedef TYPE_1__ OBJ_NAME ;


 int * name_funcs_stack ;
 unsigned long openssl_lh_strcasehash (int ) ;
 unsigned long sk_NAME_FUNCS_num (int *) ;
 TYPE_2__* sk_NAME_FUNCS_value (int *,unsigned long) ;
 unsigned long stub1 (int ) ;

__attribute__((used)) static unsigned long obj_name_hash(const OBJ_NAME *a)
{
    unsigned long ret;

    if ((name_funcs_stack != ((void*)0))
        && (sk_NAME_FUNCS_num(name_funcs_stack) > a->type)) {
        ret =
            sk_NAME_FUNCS_value(name_funcs_stack,
                                a->type)->hash_func(a->name);
    } else {
        ret = openssl_lh_strcasehash(a->name);
    }
    ret ^= a->type;
    return ret;
}
