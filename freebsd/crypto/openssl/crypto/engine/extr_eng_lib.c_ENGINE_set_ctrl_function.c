
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctrl; } ;
typedef int ENGINE_CTRL_FUNC_PTR ;
typedef TYPE_1__ ENGINE ;



int ENGINE_set_ctrl_function(ENGINE *e, ENGINE_CTRL_FUNC_PTR ctrl_f)
{
    e->ctrl = ctrl_f;
    return 1;
}
