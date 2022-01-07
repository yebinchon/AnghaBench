
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;



__attribute__((used)) static inline char *
xo_buf_cur (xo_buffer_t *xbp)
{
    if (xbp == ((void*)0))
 return ((void*)0);
    return xbp->xb_curp;
}
