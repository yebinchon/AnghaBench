
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int cno; int lno; } ;
struct TYPE_8__ {scalar_t__ character; int count; TYPE_1__ m_stop; TYPE_1__ m_start; TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_9__ {int csearchdir; scalar_t__ lastckey; } ;
typedef int SCR ;
typedef scalar_t__ CHAR_T ;
typedef scalar_t__ ARG_CHAR_T ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VC_ISDOT ;
 TYPE_4__* VIP (int *) ;
 scalar_t__ db_eget (int *,int ,scalar_t__**,size_t*,int*) ;
 int fSEARCH ;
 int notfound (int *,scalar_t__) ;

int
v_chf(SCR *sp, VICMD *vp)
{
 size_t len;
 u_long cnt;
 int isempty;
 ARG_CHAR_T key;
 CHAR_T *endp, *p, *startp;






 key = vp->character;
 if (!F_ISSET(vp, VC_ISDOT))
  VIP(sp)->lastckey = key;
 VIP(sp)->csearchdir = fSEARCH;

 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (isempty)
   goto empty;
  return (1);
 }

 if (len == 0) {
empty: notfound(sp, key);
  return (1);
 }

 endp = (startp = p) + len;
 p += vp->m_start.cno;
 for (cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1; cnt--;) {
  while (++p < endp && *p != key);
  if (p == endp) {
   notfound(sp, key);
   return (1);
  }
 }

 vp->m_stop.cno = p - startp;





 vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 return (0);
}
