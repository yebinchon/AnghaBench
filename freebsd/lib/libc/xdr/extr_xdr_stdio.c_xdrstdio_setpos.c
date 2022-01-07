
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
 scalar_t__ fseek (int *,long,int ) ;

__attribute__((used)) static bool_t
xdrstdio_setpos(XDR *xdrs, u_int pos)
{

 return ((fseek((FILE *)xdrs->x_private, (long)pos, 0) < 0) ?
  FALSE : TRUE);
}
