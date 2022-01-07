
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
 int fwrite (int *,int,int,int *) ;
 int htonl (int ) ;

__attribute__((used)) static bool_t
xdrstdio_putlong(XDR *xdrs, const long *lp)
{
 int32_t mycopy = htonl((u_int32_t)*lp);

 if (fwrite(&mycopy, sizeof(int32_t), 1, (FILE *)xdrs->x_private) != 1)
  return (FALSE);
 return (TRUE);
}
