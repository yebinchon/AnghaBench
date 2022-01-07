
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int top; int* err_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_FLAG_CLEAR ;
 TYPE_1__* ERR_get_state () ;
 int constant_time_eq_int (int,int ) ;
 int constant_time_select_int (int ,int ,int ) ;

void err_clear_last_constant_time(int clear)
{
    ERR_STATE *es;
    int top;

    es = ERR_get_state();
    if (es == ((void*)0))
        return;

    top = es->top;





    clear = constant_time_select_int(constant_time_eq_int(clear, 0),
                                     0, ERR_FLAG_CLEAR);
    es->err_flags[top] |= clear;
}
