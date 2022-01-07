
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int scroll_t ;
typedef int recno_t ;
struct TYPE_5__ {scalar_t__ cno; int lno; } ;
typedef int SMAP ;
typedef int SCR ;
typedef TYPE_1__ MARK ;
 int F_SET (int ,int ) ;
 int VIP (int *) ;
 int VIP_CUR_INVALID ;


 int abort () ;
 scalar_t__ nonblank (int *,int ,scalar_t__*) ;
 scalar_t__ vs_sm_cursor (int *,int **) ;
 int vs_sm_down (int *,TYPE_1__*,int ,int,int *) ;
 int vs_sm_up (int *,TYPE_1__*,int ,int,int *) ;

int
vs_sm_scroll(SCR *sp, MARK *rp, recno_t count, scroll_t scmd)
{
 SMAP *smp;






 F_SET(VIP(sp), VIP_CUR_INVALID);


 if (vs_sm_cursor(sp, &smp))
  return (1);

 switch (scmd) {
 case 135:
 case 131:
 case 130:
 case 129:
  if (vs_sm_down(sp, rp, count, scmd, smp))
   return (1);
  break;
 case 134:
 case 133:
 case 132:
 case 128:
  if (vs_sm_up(sp, rp, count, scmd, smp))
   return (1);
  break;
 default:
  abort();
 }
 if (scmd != 133 && scmd != 130 &&
     rp->cno == 0 && nonblank(sp, rp->lno, &rp->cno))
  return (1);

 return (0);
}
