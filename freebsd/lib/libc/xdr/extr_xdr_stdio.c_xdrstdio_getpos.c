
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
typedef int FILE ;


 scalar_t__ ftell (int *) ;

__attribute__((used)) static u_int
xdrstdio_getpos(XDR *xdrs)
{

 return ((u_int) ftell((FILE *)xdrs->x_private));
}
