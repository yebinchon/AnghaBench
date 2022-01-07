
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int top; int bottom; char const** err_file; int* err_line; int * err_buffer; scalar_t__* err_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_NUM_ERRORS ;
 int ERR_PACK (int,int,int) ;
 TYPE_1__* ERR_get_state () ;
 int err_clear_data (TYPE_1__*,size_t) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 char* strrchr (char const*,char) ;

void ERR_put_error(int lib, int func, int reason, const char *file, int line)
{
    ERR_STATE *es;
    es = ERR_get_state();
    if (es == ((void*)0))
        return;

    es->top = (es->top + 1) % ERR_NUM_ERRORS;
    if (es->top == es->bottom)
        es->bottom = (es->bottom + 1) % ERR_NUM_ERRORS;
    es->err_flags[es->top] = 0;
    es->err_buffer[es->top] = ERR_PACK(lib, func, reason);
    es->err_file[es->top] = file;
    es->err_line[es->top] = line;
    err_clear_data(es, es->top);
}
