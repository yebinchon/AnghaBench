
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_handy; char* x_private; } ;
typedef TYPE_1__ XDR ;


 int FALSE ;
 int TRUE ;
 int memmove (char*,char*,scalar_t__) ;

__attribute__((used)) static bool_t
xdrmem_getbytes(XDR *xdrs, char *addr, u_int len)
{

 if (xdrs->x_handy < len)
  return (FALSE);
 xdrs->x_handy -= len;
 memmove(addr, xdrs->x_private, len);
 xdrs->x_private = (char *)xdrs->x_private + len;
 return (TRUE);
}
