
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; char** err_data; int* err_data_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 TYPE_1__* ERR_get_state () ;
 int err_clear_data (TYPE_1__*,int) ;

__attribute__((used)) static int err_set_error_data_int(char *data, int flags)
{
    ERR_STATE *es;
    int i;

    es = ERR_get_state();
    if (es == ((void*)0))
        return 0;

    i = es->top;

    err_clear_data(es, i);
    es->err_data[i] = data;
    es->err_data_flags[i] = flags;

    return 1;
}
