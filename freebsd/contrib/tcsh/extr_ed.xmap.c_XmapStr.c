
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buf; int len; } ;
struct TYPE_7__ {TYPE_1__ str; } ;
typedef TYPE_2__ XmapVal ;
struct TYPE_8__ {int buf; int len; } ;
typedef TYPE_3__ CStr ;



XmapVal *
XmapStr(CStr *str)
{
    static XmapVal xm;
    xm.str.len = str->len;
    xm.str.buf = str->buf;
    return &xm;
}
