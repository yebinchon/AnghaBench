
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int xo_errno; scalar_t__ xo_columns; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int xo_field_info_t ;
typedef int xo_emit_flags_t ;
typedef int fields ;


 int XOEF_RETAIN ;
 scalar_t__ XOF_ISSET (TYPE_1__*,int ) ;
 int XOF_RETAIN_ALL ;
 int XOF_RETAIN_NONE ;
 int * alloca (unsigned int) ;
 int bzero (int *,unsigned int) ;
 int errno ;
 unsigned int xo_count_fields (TYPE_1__*,char const*) ;
 int xo_do_emit_fields (TYPE_1__*,int *,unsigned int,char const*) ;
 scalar_t__ xo_parse_fields (TYPE_1__*,int *,unsigned int,char const*) ;
 int xo_retain_add (char const*,int *,unsigned int) ;
 scalar_t__ xo_retain_find (char const*,int **,unsigned int*) ;

__attribute__((used)) static int
xo_do_emit (xo_handle_t *xop, xo_emit_flags_t flags, const char *fmt)
{
    xop->xo_columns = 0;
    xop->xo_errno = errno;

    if (fmt == ((void*)0))
 return 0;

    unsigned max_fields;
    xo_field_info_t *fields = ((void*)0);


    if (XOF_ISSET(xop, XOF_RETAIN_ALL))
 flags |= XOEF_RETAIN;
    if (XOF_ISSET(xop, XOF_RETAIN_NONE))
 flags &= ~XOEF_RETAIN;






    if (!(flags & XOEF_RETAIN)
 || xo_retain_find(fmt, &fields, &max_fields) != 0
 || fields == ((void*)0)) {


 max_fields = xo_count_fields(xop, fmt);
 fields = alloca(max_fields * sizeof(fields[0]));
 bzero(fields, max_fields * sizeof(fields[0]));

 if (xo_parse_fields(xop, fields, max_fields, fmt))
     return -1;

 if (flags & XOEF_RETAIN) {

     xo_retain_add(fmt, fields, max_fields);
 }
    }

    return xo_do_emit_fields(xop, fields, max_fields, fmt);
}
