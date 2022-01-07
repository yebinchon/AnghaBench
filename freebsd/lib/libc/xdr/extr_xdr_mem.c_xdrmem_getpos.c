
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_int ;
struct TYPE_3__ {scalar_t__ x_base; scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;



__attribute__((used)) static u_int
xdrmem_getpos(XDR *xdrs)
{


 return (u_int)((u_long)xdrs->x_private - (u_long)xdrs->x_base);
}
