
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int destroy; } ;
typedef int ENGINE_GEN_INT_FUNC_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_destroy_function(ENGINE *e, ENGINE_GEN_INT_FUNC_PTR destroy_f)
{
    e->destroy = destroy_f;
    return 1;
}
