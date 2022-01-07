
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int ssize_t ;


 int xo_buf_escape (TYPE_1__*,int *,char const*,int ,int ) ;

__attribute__((used)) static void
xo_data_escape (xo_handle_t *xop, const char *str, ssize_t len)
{
    xo_buf_escape(xop, &xop->xo_data, str, len, 0);
}
