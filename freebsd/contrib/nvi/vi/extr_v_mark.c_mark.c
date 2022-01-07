
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum which { ____Placeholder_which } which ;
typedef int dir_t ;
struct TYPE_8__ {scalar_t__ lno; size_t cno; } ;
struct TYPE_7__ {TYPE_2__ m_stop; TYPE_2__ m_start; TYPE_2__ m_final; int character; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;
typedef TYPE_2__ MARK ;


 int BACKWARD ;

 int DBG_FATAL ;
 int FORWARD ;

 int F_SET (TYPE_1__*,int ) ;
 scalar_t__ ISMOTION (TYPE_1__*) ;
 int M_BERR ;
 int VM_LMODE ;
 int abort () ;
 scalar_t__ db_get (int *,scalar_t__,int ,int *,size_t*) ;
 scalar_t__ mark_get (int *,int ,TYPE_2__*,int ) ;
 scalar_t__ nonblank (int *,scalar_t__,size_t*) ;
 int v_nomove (int *) ;

__attribute__((used)) static int
mark(SCR *sp, VICMD *vp, int getmark, enum which cmd)
{
 dir_t dir;
 MARK m;
 size_t len;

 if (getmark && mark_get(sp, vp->character, &vp->m_stop, M_BERR))
  return (1);
 switch (cmd) {
 case 129:
  if (db_get(sp, vp->m_stop.lno, DBG_FATAL, ((void*)0), &len))
   return (1);
  if (vp->m_stop.cno < len ||
      (vp->m_stop.cno == len && len == 0))
   break;

  if (ISMOTION(vp))
   F_SET(vp, VM_LMODE);
  cmd = 128;

 case 128:
  vp->m_stop.cno = 0;
  if (nonblank(sp, vp->m_stop.lno, &vp->m_stop.cno))
   return (1);
  break;
 default:
  abort();
 }


 if (!ISMOTION(vp)) {
  vp->m_final = vp->m_stop;
  return (0);
 }





 if (cmd == 129 &&
     vp->m_stop.lno == vp->m_start.lno &&
     vp->m_stop.cno == vp->m_start.cno) {
  v_nomove(sp);
  return (1);
 }
 if (vp->m_start.lno > vp->m_stop.lno ||
     (vp->m_start.lno == vp->m_stop.lno &&
     vp->m_start.cno > vp->m_stop.cno)) {
  m = vp->m_start;
  vp->m_start = vp->m_stop;
  vp->m_stop = m;
  dir = BACKWARD;
 } else
  dir = FORWARD;
 vp->m_final = vp->m_start;





 if (cmd == 128)
  return (0);
 if (vp->m_start.lno < vp->m_stop.lno && vp->m_stop.cno == 0) {
  if (db_get(sp, --vp->m_stop.lno, DBG_FATAL, ((void*)0), &len))
   return (1);
  vp->m_stop.cno = len ? len - 1 : 0;
  len = 0;
  if (nonblank(sp, vp->m_start.lno, &len))
   return (1);
  if (vp->m_start.cno <= len)
   F_SET(vp, VM_LMODE);
 } else
  --vp->m_stop.cno;

 return (0);
}
