
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int ssize_t ;




 int xo_buf_append_div (TYPE_1__*,char*,int ,int *,int ,char const*,int ,int *,int ,int *,int ) ;
 int xo_buf_append_locale (TYPE_1__*,int *,char const*,int ) ;
 int xo_style (TYPE_1__*) ;

__attribute__((used)) static void
xo_format_text (xo_handle_t *xop, const char *str, ssize_t len)
{
    switch (xo_style(xop)) {
    case 128:
 xo_buf_append_locale(xop, &xop->xo_data, str, len);
 break;

    case 129:
 xo_buf_append_div(xop, "text", 0, ((void*)0), 0, str, len, ((void*)0), 0, ((void*)0), 0);
 break;
    }
}
