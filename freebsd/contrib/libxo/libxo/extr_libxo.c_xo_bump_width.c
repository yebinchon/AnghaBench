
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* xf_width; size_t xf_dots; } ;
typedef TYPE_1__ xo_format_t ;



__attribute__((used)) static void
xo_bump_width (xo_format_t *xfp, int digit)
{
    int *ip = &xfp->xf_width[xfp->xf_dots];

    *ip = ((*ip > 0) ? *ip : 0) * 10 + digit;
}
