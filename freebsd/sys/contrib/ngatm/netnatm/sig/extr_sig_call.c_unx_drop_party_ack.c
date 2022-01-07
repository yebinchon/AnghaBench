
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_13__ {int flag; int epref; } ;
struct uni_drop_party_ack {TYPE_7__ epref; int cause; } ;
struct TYPE_10__ {int act; int cref; } ;
struct TYPE_11__ {TYPE_1__ hdr; struct uni_drop_party_ack drop_party_ack; } ;
struct uni_all {TYPE_2__ u; } ;
struct party {int state; } ;
struct call {TYPE_3__* uni; int cstate; } ;
struct TYPE_12__ {int cause; } ;


 scalar_t__ IE_ISGOOD (TYPE_7__) ;
 int MK_IE_CAUSE (int ,int ,int ) ;
 int SIGP_DROP_PARTY_ACK ;
 int UNI_CAUSE_IE_INV ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_EPSTATE_NULL ;
 int UNI_FREE (struct uni_all*) ;







 int clear_callD (struct call*) ;
 int handle_bad_drop_cause (struct call*,int *,int) ;
 int map_callstate (int ) ;
 int uni_bad_message (struct call*,struct uni_all*,int ,TYPE_7__*,int) ;
 int uni_enq_party (struct party*,int ,int ,struct uni_msg*,struct uni_all*) ;
 struct party* uni_find_partyx (struct call*,int ,int ) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status_verify (TYPE_3__*,int *,int ,TYPE_7__*,int ) ;
 int uni_verify (TYPE_3__*,int ) ;
 int uni_vfy_collect_ies (TYPE_3__*) ;
 int uni_vfy_remove_unknown (TYPE_3__*) ;

__attribute__((used)) static void
unx_drop_party_ack(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
 struct party *p;
 struct uni_drop_party_ack *ack = &u->u.drop_party_ack;

 if (IE_ISGOOD(u->u.drop_party_ack.epref)) {
  p = uni_find_partyx(c, ack->epref.epref, ack->epref.flag);
  if (p != ((void*)0)) {
   handle_bad_drop_cause(c, &ack->cause, 1);
   uni_vfy_remove_unknown(c->uni);
   switch (uni_verify(c->uni, u->u.hdr.act)) {

     case 134:
    goto clear;

     case 130:
     case 131:
    uni_respond_status_verify(c->uni,
        &u->u.hdr.cref, map_callstate(c->cstate),
        &ack->epref, p->state);
     case 133:
    goto ignore;

     case 129:
    uni_respond_status_verify(c->uni,
        &u->u.hdr.cref, map_callstate(c->cstate),
        &ack->epref, UNI_EPSTATE_NULL);
     case 128:
     case 132:
    break;
   }
   if (legal) {
    uni_enq_party(p, SIGP_DROP_PARTY_ACK, 0, m, u);
    return;
   }
   uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
       &ack->epref, -1);
  }
  goto ignore;
 }




 (void)uni_verify(c->uni, u->u.hdr.act);
 MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_IE_INV);

  clear:
 uni_vfy_collect_ies(c->uni);
 clear_callD(c);
 uni_msg_destroy(m);
 UNI_FREE(u);
 return;

  ignore:
 uni_msg_destroy(m);
 UNI_FREE(u);
}
