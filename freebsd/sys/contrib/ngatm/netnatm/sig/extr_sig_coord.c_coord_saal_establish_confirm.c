
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni {int custat; int arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* uni_output ) (struct uni*,int ,int ,int ,int *) ;} ;


 int ASSERT (int ,char*) ;




 int SIGC_LINK_ESTABLISH_confirm ;
 int TIMER_STOP_UNI (struct uni*,int ) ;
 int UNIAPI_LINK_ESTABLISH_confirm ;
 int UNI_FAC_COORD ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int set_custat (struct uni*,int) ;
 int sig_all_calls (struct uni*,int ) ;
 int stub1 (struct uni*,int ,int ,int ,int *) ;
 int stub2 (struct uni*,int ,int ,int ,int *) ;
 int t309 ;

__attribute__((used)) static void
coord_saal_establish_confirm(struct uni *uni)
{
 switch (uni->custat) {

   case 131:
   case 129:
  VERBOSE0(uni, UNI_FAC_COORD,
      "signal saal_establish.confirm in CU%u", uni->custat);
  break;

   case 130:



  TIMER_STOP_UNI(uni, t309);
  sig_all_calls(uni, SIGC_LINK_ESTABLISH_confirm);
  uni->funcs->uni_output(uni, uni->arg,
      UNIAPI_LINK_ESTABLISH_confirm, 0, ((void*)0));
  set_custat(uni, 128);
  break;

   case 128:



  sig_all_calls(uni, SIGC_LINK_ESTABLISH_confirm);
  uni->funcs->uni_output(uni, uni->arg,
      UNIAPI_LINK_ESTABLISH_confirm, 0, ((void*)0));
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
