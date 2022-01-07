
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e_event; int * e_asp; } ;
typedef int SCR ;
typedef TYPE_1__ EVENT ;
 int M_ERR ;
 int abort () ;
 int free (int *) ;
 int msgq (int *,int ,char*) ;

void
v_event_err(
 SCR *sp,
 EVENT *evp)
{
 switch (evp->e_event) {
 case 137:
  msgq(sp, M_ERR, "276|Unexpected character event");
  break;
 case 136:
  msgq(sp, M_ERR, "277|Unexpected end-of-file event");
  break;
 case 134:
  msgq(sp, M_ERR, "279|Unexpected interrupt event");
  break;
 case 133:
  msgq(sp, M_ERR, "281|Unexpected repaint event");
  break;
 case 130:
  msgq(sp, M_ERR, "285|Unexpected string event");
  break;
 case 129:
  msgq(sp, M_ERR, "286|Unexpected timeout event");
  break;
 case 128:
  msgq(sp, M_ERR, "316|Unexpected resize event");
  break;





 case 135:
 case 132:
 case 131:
 default:
  abort();
 }


 if (evp->e_asp != ((void*)0))
  free(evp->e_asp);
}
