
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_8__ {int act; int cref; } ;
struct TYPE_10__ {int flag; int epref; } ;
struct uni_add_party_rej {TYPE_3__ epref; int cause; } ;
struct TYPE_9__ {TYPE_1__ hdr; struct uni_add_party_rej add_party_rej; } ;
struct uni_all {TYPE_2__ u; } ;
struct party {int state; } ;
struct call {int uni; int cstate; } ;


 scalar_t__ IE_ISGOOD (TYPE_3__) ;
 int IE_ISPRESENT (TYPE_3__) ;
 int SIGP_ADD_PARTY_REJ ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_IE_EPREF ;







 int clear_callD (struct call*) ;
 int default_act_epref (int ,TYPE_3__*) ;
 int handle_bad_drop_cause (struct call*,int *,int ) ;
 int map_callstate (int ) ;
 int uni_bad_message (struct call*,struct uni_all*,int ,TYPE_3__*,int) ;
 int uni_enq_party (struct party*,int ,int ,struct uni_msg*,struct uni_all*) ;
 struct party* uni_find_partyx (struct call*,int ,int ) ;
 int uni_mandate_ie (int ,int ) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status_verify (int ,int *,int ,TYPE_3__*,int ) ;
 int uni_verify (int ,int ) ;
 int uni_vfy_collect_ies (int ) ;
 int uni_vfy_remove_unknown (int ) ;

__attribute__((used)) static void
unx_add_party_rej(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
 struct uni_add_party_rej *ar = &u->u.add_party_rej;
 struct party *p;

 if (IE_ISGOOD(ar->epref)) {
  p = uni_find_partyx(c, ar->epref.epref, ar->epref.flag);
  if (p == ((void*)0))
   goto ignore;

  if (legal) {
   handle_bad_drop_cause(c, &ar->cause, 0);
   uni_vfy_remove_unknown(c->uni);
   switch (uni_verify(c->uni, u->u.hdr.act)) {

     case 134:
    goto clear;

     case 130:
     case 131:
    uni_respond_status_verify(c->uni,
        &u->u.hdr.cref, map_callstate(c->cstate),
        &ar->epref, p->state);
     case 133:
    goto ignore;

     case 128:
    uni_vfy_collect_ies(c->uni);
    break;

     case 129:
    uni_respond_status_verify(c->uni,
        &u->u.hdr.cref, map_callstate(c->cstate),
        &ar->epref, p->state);
     case 132:
    break;
   }
   uni_enq_party(p, SIGP_ADD_PARTY_REJ, 0, m, u);
   return;
  }
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &ar->epref, -1);
  return;
 }





 default_act_epref(c->uni, &ar->epref);
 if (!IE_ISPRESENT(ar->epref))
  uni_mandate_ie(c->uni, UNI_IE_EPREF);
 (void)uni_verify(c->uni, u->u.hdr.act);

  clear:
 uni_vfy_collect_ies(c->uni);
 clear_callD(c);

  ignore:
 uni_msg_destroy(m);
 UNI_FREE(u);
}
