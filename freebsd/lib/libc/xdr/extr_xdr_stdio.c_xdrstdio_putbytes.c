
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int fwrite (char const*,size_t,int,int *) ;

__attribute__((used)) static bool_t
xdrstdio_putbytes(XDR *xdrs, const char *addr, u_int len)
{

 if ((len != 0) && (fwrite(addr, (size_t)len, 1,
     (FILE *)xdrs->x_private) != 1))
  return (FALSE);
 return (TRUE);
}
