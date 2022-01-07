
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_6__ {int flag; } ;
struct TYPE_4__ {TYPE_3__ cref; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct uni_all {int mtype; TYPE_2__ u; } ;
struct uni {int glob_respond; int glob_start; } ;


 int SIGR_RESTART ;
 int SIGR_STATUS ;
 int SIGS_RESTART_ACK ;
 int SIGS_STATUS ;
 int UNI_CAUSE_CREF_INV ;
 int UNI_FAC_COORD ;
 int UNI_FREE (struct uni_all*) ;



 int VERBOSE (struct uni*,int ,int,char*,int) ;
 int uni_enq_resp (struct uni*,int ,int ,struct uni_msg*,struct uni_all*) ;
 int uni_enq_start (struct uni*,int ,int ,struct uni_msg*,struct uni_all*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status (struct uni*,TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
input_global(struct uni *uni, struct uni_msg *m, struct uni_all *u)
{
 VERBOSE(uni, UNI_FAC_COORD, 2, "GLOB MTYPE = %x", u->mtype);

 switch (u->mtype) {

   default:





  uni_respond_status(uni, &u->u.hdr.cref,
      u->u.hdr.cref.flag ? uni->glob_start : uni->glob_respond,
      UNI_CAUSE_CREF_INV);
  break;

   case 130:
  if (u->u.hdr.cref.flag) {



   uni_respond_status(uni, &u->u.hdr.cref,
       uni->glob_start, UNI_CAUSE_CREF_INV);
   break;
  }
  uni_enq_resp(uni, SIGR_RESTART, 0, m, u);
  return;

   case 129:
  if (!u->u.hdr.cref.flag) {






   uni_respond_status(uni, &u->u.hdr.cref,
       uni->glob_respond, UNI_CAUSE_CREF_INV);
   break;
  }
  uni_enq_start(uni, SIGS_RESTART_ACK, 0, m, u);
  return;

   case 128:
  if (u->u.hdr.cref.flag)
   uni_enq_start(uni, SIGS_STATUS, 0, m, u);
  else
   uni_enq_resp(uni, SIGR_STATUS, 0, m, u);
  return;
 }
 uni_msg_destroy(m);
 UNI_FREE(u);
}
