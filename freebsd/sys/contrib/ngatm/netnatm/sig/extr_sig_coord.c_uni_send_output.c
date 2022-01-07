
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct uni_all {int dummy; } ;
struct uni {scalar_t__ custat; int arg; TYPE_1__* funcs; int cx; } ;
struct TYPE_2__ {int (* saal_output ) (struct uni*,int ,int ,struct uni_msg*) ;} ;


 scalar_t__ CU_STAT0 ;
 scalar_t__ CU_STAT1 ;
 scalar_t__ CU_STAT2 ;
 int SAAL_DATA_request ;
 int SIGO_DATA ;
 int UNI_FAC_ERR ;
 int VERBOSE0 (struct uni*,int ,char*,int) ;
 int stub1 (struct uni*,int ,int ,struct uni_msg*) ;
 int uni_delenq_coord (struct uni*,int ,int ,struct uni_msg*) ;
 int uni_encode (struct uni_msg*,struct uni_all*,int *) ;
 struct uni_msg* uni_msg_alloc (int) ;
 int uni_msg_destroy (struct uni_msg*) ;

int
uni_send_output(struct uni_all *u, struct uni *uni)
{
 struct uni_msg *m;
 int err;

 if (uni->custat == CU_STAT0 || uni->custat == CU_STAT2)
  return (0);

 m = uni_msg_alloc(1024);
 if ((err = uni_encode(m, u, &uni->cx)) != 0) {
  VERBOSE0(uni, UNI_FAC_ERR, "uni_encode failed: %08x", err);
  uni_msg_destroy(m);
  return (-1);
 }
 if (uni->custat == CU_STAT1)
  uni_delenq_coord(uni, SIGO_DATA, 0, m);
 else
  uni->funcs->saal_output(uni, uni->arg, SAAL_DATA_request, m);
 return (0);
}
