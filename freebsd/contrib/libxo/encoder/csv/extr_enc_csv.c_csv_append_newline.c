
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xo_buffer_t ;
struct TYPE_3__ {int c_flags; } ;
typedef TYPE_1__ csv_private_t ;


 int CF_DOS_NEWLINE ;
 int xo_buf_append (int *,char*,int) ;

__attribute__((used)) static void
csv_append_newline (xo_buffer_t *xbp, csv_private_t *csv)
{
    if (csv->c_flags & CF_DOS_NEWLINE)
 xo_buf_append(xbp, "\r\n", 2);
    else
 xo_buf_append(xbp, "\n", 1);
}
