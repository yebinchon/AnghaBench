
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ e_event; int e_len; scalar_t__ e_flags; int e_c; int e_value; int * e_csp; } ;
struct TYPE_9__ {size_t i_nelem; size_t i_next; size_t i_cnt; TYPE_3__* i_event; } ;
struct TYPE_8__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;
typedef TYPE_3__ EVENT ;
typedef int CHAR_T ;


 scalar_t__ E_CHARACTER ;
 scalar_t__ E_STRING ;
 int KEY_VAL (TYPE_1__*,int ) ;
 int MAX (size_t,int) ;
 int v_event_grow (TYPE_1__*,int ) ;

__attribute__((used)) static int
v_event_append(
 SCR *sp,
 EVENT *argp)
{
 CHAR_T *s;
 EVENT *evp;
 GS *gp;
 size_t nevents;


 nevents = argp->e_event == E_STRING ? argp->e_len : 1;
 gp = sp->gp;
 if (gp->i_event == ((void*)0) ||
     nevents > gp->i_nelem - (gp->i_next + gp->i_cnt))
  v_event_grow(sp, MAX(nevents, 64));
 evp = gp->i_event + gp->i_next + gp->i_cnt;
 gp->i_cnt += nevents;


 if (argp->e_event == E_STRING)
  for (s = argp->e_csp; nevents--; ++evp) {
   evp->e_event = E_CHARACTER;
   evp->e_c = *s++;
   evp->e_value = KEY_VAL(sp, evp->e_c);
   evp->e_flags = 0;
  }
 else
  *evp = *argp;
 return (0);
}
