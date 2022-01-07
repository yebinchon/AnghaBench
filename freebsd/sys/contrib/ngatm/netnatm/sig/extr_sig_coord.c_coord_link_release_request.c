
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct uni {int custat; int arg; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* saal_output ) (struct uni*,int ,int ,int *) ;} ;


 int ASSERT (int ,char*) ;




 int SAAL_RELEASE_request ;
 int UNIAPI_ERROR_BAD_CALLSTATE ;
 int UNIAPI_OK ;
 int set_custat (struct uni*,int const) ;
 int stub1 (struct uni*,int ,int ,int *) ;
 int uniapi_uni_error (struct uni*,int ,int ,int ) ;

__attribute__((used)) static void
coord_link_release_request(struct uni *uni, u_int cookie)
{
 switch (uni->custat) {

   case 131:
   case 130:
   case 129:
  uniapi_uni_error(uni, UNIAPI_ERROR_BAD_CALLSTATE, cookie, 0);
  break;

   case 128:



  uni->funcs->saal_output(uni, uni->arg,
      SAAL_RELEASE_request, ((void*)0));
  set_custat(uni, 129);
  uniapi_uni_error(uni, UNIAPI_OK, cookie, 0);
  break;

   default:
  ASSERT(0, ("CU_STAT*"));
 }
}
