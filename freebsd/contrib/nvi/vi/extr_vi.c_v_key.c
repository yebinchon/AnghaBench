
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int gcret_t ;
struct TYPE_15__ {int e_event; int e_value; } ;
struct TYPE_14__ {TYPE_1__* gp; } ;
struct TYPE_13__ {int (* scr_bell ) (TYPE_2__*) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EVENT ;


 int EC_QUOTED ;






 int GC_ERR ;
 int GC_FATAL ;
 int GC_INTERRUPT ;
 int GC_OK ;
 int K_VLNEXT ;
 int stub1 (TYPE_2__*) ;
 int v_event_err (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ v_event_get (TYPE_2__*,TYPE_3__*,int ,int) ;
 int vs_repaint (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static gcret_t
v_key(
 SCR *sp,
 int command_events,
 EVENT *evp,
 u_int32_t ec_flags)
{
 u_int32_t quote;

 for (quote = 0;;) {
  if (v_event_get(sp, evp, 0, ec_flags | quote))
   return (GC_FATAL);
  quote = 0;

  switch (evp->e_event) {
  case 133:







   if (evp->e_value == K_VLNEXT) {
    quote = EC_QUOTED;
    break;
   }
   return (GC_OK);
  case 131:
  case 132:
   return (GC_FATAL);
  case 130:
   (void)sp->gp->scr_bell(sp);
   return (GC_INTERRUPT);
  case 129:
   if (vs_repaint(sp, evp))
    return (GC_FATAL);
   break;
  case 128:
   return (GC_ERR);
  default:
   v_event_err(sp, evp);
   return (GC_ERR);
  }
 }

}
