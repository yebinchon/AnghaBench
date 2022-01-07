
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xo_simplify_field_func_t ;
struct TYPE_12__ {int xo_errno; scalar_t__ xo_columns; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_field_info_t ;
struct TYPE_13__ {char* xb_bufp; } ;
typedef TYPE_2__ xo_buffer_t ;
typedef int fields ;


 int bzero (int *,unsigned int) ;
 int errno ;
 int xo_buf_init (TYPE_2__*) ;
 unsigned int xo_count_fields (TYPE_1__*,char const*) ;
 TYPE_1__* xo_default (TYPE_1__*) ;
 int xo_gettext_finish_numbering_fields (TYPE_1__*,char const*,int *) ;
 scalar_t__ xo_gettext_simplify_format (TYPE_1__*,TYPE_2__*,int *,int,char const*,int ) ;
 scalar_t__ xo_parse_fields (TYPE_1__*,int *,unsigned int,char const*) ;

char *
xo_simplify_format (xo_handle_t *xop, const char *fmt, int with_numbers,
      xo_simplify_field_func_t field_cb)
{
    xop = xo_default(xop);

    xop->xo_columns = 0;
    xop->xo_errno = errno;

    unsigned max_fields = xo_count_fields(xop, fmt);
    xo_field_info_t fields[max_fields];

    bzero(fields, max_fields * sizeof(fields[0]));

    if (xo_parse_fields(xop, fields, max_fields, fmt))
 return ((void*)0);

    xo_buffer_t xb;
    xo_buf_init(&xb);

    if (with_numbers)
 xo_gettext_finish_numbering_fields(xop, fmt, fields);

    if (xo_gettext_simplify_format(xop, &xb, fields, -1, fmt, field_cb))
 return ((void*)0);

    return xb.xb_bufp;
}
