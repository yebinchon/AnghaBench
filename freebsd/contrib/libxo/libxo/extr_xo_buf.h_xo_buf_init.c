
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xb_bufp; int xb_curp; int xb_size; } ;
typedef TYPE_1__ xo_buffer_t ;


 int XO_BUFSIZ ;
 int xo_realloc (int *,int ) ;

__attribute__((used)) static inline void
xo_buf_init (xo_buffer_t *xbp)
{
    xbp->xb_size = XO_BUFSIZ;
    xbp->xb_bufp = xo_realloc(((void*)0), xbp->xb_size);
    xbp->xb_curp = xbp->xb_bufp;
}
