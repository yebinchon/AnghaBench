
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_12__ {int e_ch; int e_c; int e_value; int e_event; } ;
struct TYPE_11__ {size_t i_next; size_t i_cnt; size_t i_nelem; TYPE_3__* i_event; } ;
struct TYPE_10__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;
typedef TYPE_3__ EVENT ;
typedef int CHAR_T ;


 int BCOPY (TYPE_3__*,TYPE_3__*,size_t) ;
 int E_CHARACTER ;
 int F_INIT (int *,int ) ;
 int KEY_VAL (TYPE_1__*,int ) ;
 int MAX (size_t,int) ;
 size_t TERM_PUSH_SHIFT ;
 scalar_t__ v_event_grow (TYPE_1__*,int ) ;

int
v_event_push(
 SCR *sp,
 EVENT *p_evp,
 CHAR_T *p_s,
 size_t nitems,
 u_int flags)
{
 EVENT *evp;
 GS *gp;
 size_t total;


 gp = sp->gp;
 if (nitems <= gp->i_next ||
     (gp->i_event != ((void*)0) && gp->i_cnt == 0 && nitems <= gp->i_nelem)) {
  if (gp->i_cnt != 0)
   gp->i_next -= nitems;
  goto copy;
 }







 total = gp->i_cnt + gp->i_next + nitems + 30;
 if (total >= gp->i_nelem && v_event_grow(sp, MAX(total, 64)))
  return (1);
 if (gp->i_cnt)
  BCOPY(gp->i_event + gp->i_next,
      gp->i_event + 30 + nitems, gp->i_cnt);
 gp->i_next = 30;


copy: gp->i_cnt += nitems;
 for (evp = gp->i_event + gp->i_next; nitems--; ++evp) {
  if (p_evp != ((void*)0))
   *evp = *p_evp++;
  else {
   evp->e_event = E_CHARACTER;
   evp->e_c = *p_s++;
   evp->e_value = KEY_VAL(sp, evp->e_c);
   F_INIT(&evp->e_ch, flags);
  }
 }
 return (0);
}
