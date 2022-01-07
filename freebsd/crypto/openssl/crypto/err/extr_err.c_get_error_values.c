
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bottom; int top; int* err_flags; unsigned long* err_buffer; char** err_file; int* err_line; char** err_data; int* err_data_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_FLAG_CLEAR ;
 int ERR_NUM_ERRORS ;
 unsigned long ERR_R_INTERNAL_ERROR ;
 TYPE_1__* ERR_get_state () ;
 int err_clear (TYPE_1__*,int) ;
 int err_clear_data (TYPE_1__*,int) ;

__attribute__((used)) static unsigned long get_error_values(int inc, int top, const char **file,
                                      int *line, const char **data,
                                      int *flags)
{
    int i = 0;
    ERR_STATE *es;
    unsigned long ret;

    es = ERR_get_state();
    if (es == ((void*)0))
        return 0;

    if (inc && top) {
        if (file)
            *file = "";
        if (line)
            *line = 0;
        if (data)
            *data = "";
        if (flags)
            *flags = 0;

        return ERR_R_INTERNAL_ERROR;
    }

    while (es->bottom != es->top) {
        if (es->err_flags[es->top] & ERR_FLAG_CLEAR) {
            err_clear(es, es->top);
            es->top = es->top > 0 ? es->top - 1 : ERR_NUM_ERRORS - 1;
            continue;
        }
        i = (es->bottom + 1) % ERR_NUM_ERRORS;
        if (es->err_flags[i] & ERR_FLAG_CLEAR) {
            es->bottom = i;
            err_clear(es, es->bottom);
            continue;
        }
        break;
    }

    if (es->bottom == es->top)
        return 0;

    if (top)
        i = es->top;
    else
        i = (es->bottom + 1) % ERR_NUM_ERRORS;

    ret = es->err_buffer[i];
    if (inc) {
        es->bottom = i;
        es->err_buffer[i] = 0;
    }

    if (file != ((void*)0) && line != ((void*)0)) {
        if (es->err_file[i] == ((void*)0)) {
            *file = "NA";
            *line = 0;
        } else {
            *file = es->err_file[i];
            *line = es->err_line[i];
        }
    }

    if (data == ((void*)0)) {
        if (inc) {
            err_clear_data(es, i);
        }
    } else {
        if (es->err_data[i] == ((void*)0)) {
            *data = "";
            if (flags != ((void*)0))
                *flags = 0;
        } else {
            *data = es->err_data[i];
            if (flags != ((void*)0))
                *flags = es->err_data_flags[i];
        }
    }
    return ret;
}
