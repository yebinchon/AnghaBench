
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni {int custat; int arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* uni_output ) (struct uni*,int ,int ,int ,int *) ;} ;


 int ASSERT (int ,char*) ;




 int SIGC_LINK_ESTABLISH_ERROR_indication ;
 int UNIAPI_LINK_RELEASE_confirm ;
 int UNI_FAC_COORD ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int set_custat (struct uni*,int const) ;
 int sig_all_calls (struct uni*,int ) ;
 int stub1 (struct uni*,int ,int ,int ,int *) ;

__attribute__((used)) static void
coord_t309(struct uni *uni)
{
 switch (uni->custat) {

   case 131:
   case 130:



  sig_all_calls(uni, SIGC_LINK_ESTABLISH_ERROR_indication);
  set_custat(uni, 131);


  uni->funcs->uni_output(uni, uni->arg,
      UNIAPI_LINK_RELEASE_confirm, 0, ((void*)0));
  break;

   case 129:
   case 128:
  VERBOSE0(uni, UNI_FAC_COORD,
      "signal T309 in CU%u", uni->custat);
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
