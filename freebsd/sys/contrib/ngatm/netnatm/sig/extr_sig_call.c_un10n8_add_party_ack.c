
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_16__ {int act; } ;
struct TYPE_22__ {scalar_t__ flag; int epref; TYPE_1__ h; } ;
struct TYPE_19__ {TYPE_9__ epref; } ;
struct TYPE_18__ {TYPE_9__ epref; } ;
struct TYPE_17__ {int cref; int act; } ;
struct TYPE_20__ {TYPE_4__ add_party_ack; TYPE_3__ party_alerting; TYPE_2__ hdr; } ;
struct uni_all {TYPE_5__ u; } ;
struct party {int state; } ;
struct call {int cstate; TYPE_6__* uni; } ;
struct TYPE_21__ {int cx; } ;


 scalar_t__ IE_ISGOOD (TYPE_9__) ;
 int IE_SETERROR (TYPE_9__) ;
 int SIGP_ADD_PARTY_ACK ;
 int UNI_CAUSE_ENDP_INV ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_EPSTATE_ACTIVE ;
 int UNI_EPSTATE_NULL ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_IERR_BAD ;
 int UNI_IE_EPREF ;
 int UNI_SAVE_IERR (int *,int ,int ,int ) ;







 int clear_callD (struct call*) ;
 int map_callstate (int ) ;
 int respond_drop_party_ack (struct call*,TYPE_9__*,int ) ;
 int uni_bad_message (struct call*,struct uni_all*,int ,TYPE_9__*,int ) ;
 int uni_enq_party (struct party*,int ,int ,struct uni_msg*,struct uni_all*) ;
 struct party* uni_find_partyx (struct call*,int ,int) ;
 int uni_mandate_epref (TYPE_6__*,TYPE_9__*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status_verify (TYPE_6__*,int *,int ,TYPE_9__*,int ) ;
 int uni_verify (TYPE_6__*,int ) ;
 int uni_vfy_collect_ies (TYPE_6__*) ;

__attribute__((used)) static void
un10n8_add_party_ack(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
 struct party *p = ((void*)0);

 if (IE_ISGOOD(u->u.add_party_ack.epref)) {
  if (u->u.add_party_ack.epref.flag == 0) {
   IE_SETERROR(u->u.add_party_ack.epref);
   (void)UNI_SAVE_IERR(&c->uni->cx, UNI_IE_EPREF,
       u->u.add_party_ack.epref.h.act, UNI_IERR_BAD);
  } else {
       p = uni_find_partyx(c, u->u.add_party_ack.epref.epref, 1);
   if (p == ((void*)0)) {
    respond_drop_party_ack(c,
        &u->u.add_party_ack.epref,
        UNI_CAUSE_ENDP_INV);
    goto ignore;
   }
  }
 }
 uni_mandate_epref(c->uni, &u->u.add_party_ack.epref);

 switch (uni_verify(c->uni, u->u.hdr.act)) {

   case 134:
  uni_vfy_collect_ies(c->uni);
  clear_callD(c);
  goto ignore;

   case 130:
   case 131:
   report:
  uni_respond_status_verify(c->uni, &u->u.hdr.cref,
      map_callstate(c->cstate), &u->u.add_party_ack.epref,
      p ? p->state : UNI_EPSTATE_NULL);
   case 133:
  goto ignore;

   case 129:
   case 128:
  uni_respond_status_verify(c->uni, &u->u.hdr.cref,
      map_callstate(c->cstate), &u->u.add_party_ack.epref,
      p ? UNI_EPSTATE_ACTIVE : UNI_EPSTATE_NULL);
  if (!IE_ISGOOD(u->u.party_alerting.epref))

   goto ignore;
  break;
   case 132:
  if (!IE_ISGOOD(u->u.party_alerting.epref))




   goto report;
  break;
 }
 if (legal) {

  uni_enq_party(p, SIGP_ADD_PARTY_ACK, 0, m, u);
  return;
 }
 if (p == ((void*)0))

  respond_drop_party_ack(c, &u->u.add_party_ack.epref,
      UNI_CAUSE_ENDP_INV);
 else
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &u->u.add_party_ack.epref, p->state);

  ignore:
 uni_msg_destroy(m);
 UNI_FREE(u);
}
