
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_9__ {int cno; int lno; } ;
struct TYPE_8__ {int cno; } ;
struct TYPE_10__ {scalar_t__ character; int count; TYPE_2__ m_start; TYPE_1__ m_stop; TYPE_1__ m_final; } ;
typedef TYPE_3__ VICMD ;
struct TYPE_11__ {int csearchdir; scalar_t__ lastckey; } ;
typedef int SCR ;
typedef scalar_t__ CHAR_T ;
typedef scalar_t__ ARG_CHAR_T ;


 int FSEARCH ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 scalar_t__ ISMOTION (TYPE_3__*) ;
 int VC_C1SET ;
 int VC_ISDOT ;
 TYPE_5__* VIP (int *) ;
 scalar_t__ db_eget (int *,int ,scalar_t__**,size_t*,int*) ;
 int notfound (int *,scalar_t__) ;

int
v_chF(SCR *sp, VICMD *vp)
{
 size_t len;
 u_long cnt;
 int isempty;
 ARG_CHAR_T key;
 CHAR_T *endp, *p;







 key = vp->character;
 if (!F_ISSET(vp, VC_ISDOT))
  VIP(sp)->lastckey = key;
 VIP(sp)->csearchdir = FSEARCH;

 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (isempty)
   goto empty;
  return (1);
 }

 if (len == 0) {
empty: notfound(sp, key);
  return (1);
 }

 endp = p - 1;
 p += vp->m_start.cno;
 for (cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1; cnt--;) {
  while (--p > endp && *p != key);
  if (p == endp) {
   notfound(sp, key);
   return (1);
  }
 }

 vp->m_stop.cno = (p - endp) - 1;






 vp->m_final = vp->m_stop;
 if (ISMOTION(vp))
  --vp->m_start.cno;
 return (0);
}
