
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* cmp_func ) (int ,int ) ;} ;
struct TYPE_5__ {int type; int name; } ;
typedef TYPE_1__ OBJ_NAME ;


 int * name_funcs_stack ;
 scalar_t__ sk_NAME_FUNCS_num (int *) ;
 TYPE_2__* sk_NAME_FUNCS_value (int *,scalar_t__) ;
 int strcasecmp (int ,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int obj_name_cmp(const OBJ_NAME *a, const OBJ_NAME *b)
{
    int ret;

    ret = a->type - b->type;
    if (ret == 0) {
        if ((name_funcs_stack != ((void*)0))
            && (sk_NAME_FUNCS_num(name_funcs_stack) > a->type)) {
            ret = sk_NAME_FUNCS_value(name_funcs_stack,
                                      a->type)->cmp_func(a->name, b->name);
        } else
            ret = strcasecmp(a->name, b->name);
    }
    return ret;
}
