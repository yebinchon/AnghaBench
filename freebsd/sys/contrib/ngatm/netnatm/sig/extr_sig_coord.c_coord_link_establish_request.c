
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct uni {int custat; int arg; TYPE_1__* funcs; int timer309; } ;
struct TYPE_2__ {int (* uni_output ) (struct uni*,int ,int ,int ,int *) ;int (* saal_output ) (struct uni*,int ,int ,int *) ;} ;


 int ASSERT (int ,char*) ;




 int SAAL_ESTABLISH_request ;
 int SIGO_LINK_ESTABLISH_request ;
 int TIMER_ISACT (struct uni*,int ) ;
 int TIMER_START_UNI (struct uni*,int ,int ) ;
 int UNIAPI_ERROR_BAD_CALLSTATE ;
 int UNIAPI_LINK_ESTABLISH_confirm ;
 int UNIAPI_OK ;
 int UNI_FAC_COORD ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int set_custat (struct uni*,int) ;
 int stub1 (struct uni*,int ,int ,int *) ;
 int stub2 (struct uni*,int ,int ,int ,int *) ;
 int t309 ;
 int uni_delenq_coord (struct uni*,int ,int ,int *) ;
 int uniapi_uni_error (struct uni*,int ,int ,int ) ;

__attribute__((used)) static void
coord_link_establish_request(struct uni *uni, uint32_t cookie)
{
 switch (uni->custat) {

   case 131:



  uni->funcs->saal_output(uni, uni->arg,
      SAAL_ESTABLISH_request, ((void*)0));
  if (!TIMER_ISACT(uni, t309))
   TIMER_START_UNI(uni, t309, uni->timer309);
  set_custat(uni, 130);
  if (cookie)
   uniapi_uni_error(uni, UNIAPI_OK, cookie, 0);
  break;

   case 130:




  uni_delenq_coord(uni, SIGO_LINK_ESTABLISH_request,
      cookie, ((void*)0));
  break;

   case 129:
  uniapi_uni_error(uni, UNIAPI_ERROR_BAD_CALLSTATE, cookie, 0);
  if (cookie == 0)
   VERBOSE0(uni, UNI_FAC_COORD,
       "signal link-establish.request in CU%u",
       uni->custat);
  break;

   case 128:



  uni->funcs->uni_output(uni, uni->arg,
      UNIAPI_LINK_ESTABLISH_confirm, 0, ((void*)0));
  uniapi_uni_error(uni, UNIAPI_OK, cookie, 0);
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
