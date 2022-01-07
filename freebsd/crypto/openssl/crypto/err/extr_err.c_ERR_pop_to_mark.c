
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t bottom; size_t top; int* err_flags; } ;
typedef TYPE_1__ ERR_STATE ;


 int ERR_FLAG_MARK ;
 int ERR_NUM_ERRORS ;
 TYPE_1__* ERR_get_state () ;
 int err_clear (TYPE_1__*,size_t) ;

int ERR_pop_to_mark(void)
{
    ERR_STATE *es;

    es = ERR_get_state();
    if (es == ((void*)0))
        return 0;

    while (es->bottom != es->top
           && (es->err_flags[es->top] & ERR_FLAG_MARK) == 0) {
        err_clear(es, es->top);
        es->top = es->top > 0 ? es->top - 1 : ERR_NUM_ERRORS - 1;
    }

    if (es->bottom == es->top)
        return 0;
    es->err_flags[es->top] &= ~ERR_FLAG_MARK;
    return 1;
}
