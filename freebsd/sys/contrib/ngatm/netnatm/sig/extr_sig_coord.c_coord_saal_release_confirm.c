
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni {int custat; int arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* uni_output ) (struct uni*,int ,int ,int ,int *) ;} ;


 int ASSERT (int ,char*) ;




 int UNIAPI_LINK_RELEASE_confirm ;
 int UNI_FAC_COORD ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int set_custat (struct uni*,int const) ;
 int stub1 (struct uni*,int ,int ,int ,int *) ;

__attribute__((used)) static void
coord_saal_release_confirm(struct uni *uni)
{
 switch (uni->custat) {

   case 131:
   case 130:
   case 128:
  VERBOSE0(uni, UNI_FAC_COORD,
      "signal saal_release.confirm in CU%u", uni->custat);
  break;

   case 129:



  uni->funcs->uni_output(uni, uni->arg,
      UNIAPI_LINK_RELEASE_confirm, 0, ((void*)0));
  set_custat(uni, 131);
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
