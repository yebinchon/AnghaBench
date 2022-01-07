
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ xb_bufp; } ;
typedef TYPE_1__ xo_buffer_t ;


 int bzero (TYPE_1__*,int) ;
 int xo_free (scalar_t__) ;

__attribute__((used)) static inline void
xo_buf_cleanup (xo_buffer_t *xbp)
{
    if (xbp->xb_bufp)
 xo_free(xbp->xb_bufp);
    bzero(xbp, sizeof(*xbp));
}
