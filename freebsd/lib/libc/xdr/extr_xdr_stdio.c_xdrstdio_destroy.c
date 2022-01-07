
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
typedef int FILE ;


 int fflush (int *) ;

__attribute__((used)) static void
xdrstdio_destroy(XDR *xdrs)
{
 (void)fflush((FILE *)xdrs->x_private);

}
