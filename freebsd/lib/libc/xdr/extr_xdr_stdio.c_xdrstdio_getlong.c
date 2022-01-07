
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int int32_t ;
typedef int bool_t ;
struct TYPE_3__ {scalar_t__ x_private; } ;
typedef TYPE_1__ XDR ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int fread (int *,int,int,int *) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static bool_t
xdrstdio_getlong(XDR *xdrs, long *lp)
{
 u_int32_t temp;

 if (fread(&temp, sizeof(int32_t), 1, (FILE *)xdrs->x_private) != 1)
  return (FALSE);
 *lp = (long)ntohl(temp);
 return (TRUE);
}
