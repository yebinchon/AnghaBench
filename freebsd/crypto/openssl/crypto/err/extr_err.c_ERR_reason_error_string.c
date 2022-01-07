
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* string; void* error; } ;
typedef TYPE_1__ ERR_STRING_DATA ;


 unsigned long ERR_GET_LIB (unsigned long) ;
 unsigned long ERR_GET_REASON (unsigned long) ;
 void* ERR_PACK (unsigned long,int ,unsigned long) ;
 int RUN_ONCE (int *,int ) ;
 int do_err_strings_init ;
 int err_string_init ;
 TYPE_1__* int_err_get_item (TYPE_1__*) ;

const char *ERR_reason_error_string(unsigned long e)
{
    ERR_STRING_DATA d, *p = ((void*)0);
    unsigned long l, r;

    if (!RUN_ONCE(&err_string_init, do_err_strings_init)) {
        return ((void*)0);
    }

    l = ERR_GET_LIB(e);
    r = ERR_GET_REASON(e);
    d.error = ERR_PACK(l, 0, r);
    p = int_err_get_item(&d);
    if (!p) {
        d.error = ERR_PACK(0, 0, r);
        p = int_err_get_item(&d);
    }
    return ((p == ((void*)0)) ? ((void*)0) : p->string);
}
