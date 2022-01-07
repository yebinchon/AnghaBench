
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int orig; } ;
typedef int SCR ;
typedef TYPE_1__ CL_PRIVATE ;
 TYPE_1__* CLP (int *) ;
 int cfgetospeed (int *) ;

int
cl_baud(SCR *sp, u_long *ratep)
{
 CL_PRIVATE *clp;
 clp = CLP(sp);
 switch (cfgetospeed(&clp->orig)) {
 case 130:
 case 128:
 case 136:
 case 134:
 case 133:
 case 132:
 case 131:
 case 129:
  *ratep = 600;
  break;
 case 135:
  *ratep = 1200;
  break;
 default:
  *ratep = 9600;
  break;
 }
 return (0);
}
