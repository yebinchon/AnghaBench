
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ xb_bufp; scalar_t__ xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;
typedef scalar_t__ ssize_t ;



__attribute__((used)) static inline ssize_t
xo_buf_offset (xo_buffer_t *xbp)
{
    return xbp ? (xbp->xb_curp - xbp->xb_bufp) : 0;
}
