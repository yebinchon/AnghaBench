
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int scr_keyval_t ;
struct TYPE_4__ {int * c_cc; } ;
struct TYPE_5__ {TYPE_1__ orig; } ;
typedef int SCR ;
typedef TYPE_2__ CL_PRIVATE ;
typedef int CHAR_T ;


 TYPE_2__* CLP (int *) ;




 size_t VEOF ;
 size_t VERASE ;
 size_t VKILL ;
 size_t VWERASE ;
 int _POSIX_VDISABLE ;

int
cl_keyval(SCR *sp, scr_keyval_t val, CHAR_T *chp, int *dnep)
{
 CL_PRIVATE *clp;





 clp = CLP(sp);
 switch (val) {
 case 131:
  *dnep = (*chp = clp->orig.c_cc[VEOF]) == _POSIX_VDISABLE;
  break;
 case 130:
  *dnep = (*chp = clp->orig.c_cc[VERASE]) == _POSIX_VDISABLE;
  break;
 case 129:
  *dnep = (*chp = clp->orig.c_cc[VKILL]) == _POSIX_VDISABLE;
  break;





 default:
  *dnep = 1;
  break;
 }
 return (0);
}
