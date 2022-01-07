
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* xb_bufp; } ;
typedef TYPE_1__ xo_buffer_t ;
typedef int ssize_t ;


 scalar_t__ isdigit (int) ;

__attribute__((used)) static int
xo_buf_find_last_number (xo_buffer_t *xbp, ssize_t start_offset)
{
    int rc = 0;
    int digit = 1;
    char *sp = xbp->xb_bufp;
    char *cp = sp + start_offset;

    while (--cp >= sp)
 if (isdigit((int) *cp))
     break;

    for ( ; cp >= sp; cp--) {
 if (!isdigit((int) *cp))
     break;
 rc += (*cp - '0') * digit;
 digit *= 10;
    }

    return rc;
}
