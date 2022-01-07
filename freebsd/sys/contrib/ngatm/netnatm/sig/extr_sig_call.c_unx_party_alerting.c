
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_15__ {int act; } ;
struct TYPE_20__ {scalar_t__ flag; int epref; TYPE_1__ h; } ;
struct TYPE_17__ {TYPE_8__ epref; } ;
struct TYPE_16__ {int cref; int act; } ;
struct TYPE_18__ {TYPE_3__ party_alerting; TYPE_2__ hdr; } ;
struct uni_all {TYPE_4__ u; } ;
struct party {int state; } ;
struct call {int cstate; TYPE_5__* uni; } ;
struct TYPE_19__ {int cx; } ;


 scalar_t__ IE_ISGOOD (TYPE_8__) ;
 int IE_SETERROR (TYPE_8__) ;
 int SIGP_PARTY_ALERTING ;
 int UNI_CAUSE_ENDP_INV ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_EPSTATE_ALERT_RCVD ;
 int UNI_EPSTATE_NULL ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_IERR_BAD ;
 int UNI_IE_EPREF ;
 int UNI_SAVE_IERR (int *,int ,int ,int ) ;







 int clear_callD (struct call*) ;
 int map_callstate (int ) ;
 int respond_drop_party_ack (struct call*,TYPE_8__*,int ) ;
 int uni_bad_message (struct call*,struct uni_all*,int ,TYPE_8__*,int ) ;
 int uni_enq_party (struct party*,int ,int ,struct uni_msg*,struct uni_all*) ;
 struct party* uni_find_partyx (struct call*,int ,int) ;
 int uni_mandate_epref (TYPE_5__*,TYPE_8__*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status_verify (TYPE_5__*,int *,int ,TYPE_8__*,int ) ;
 int uni_verify (TYPE_5__*,int ) ;
 int uni_vfy_collect_ies (TYPE_5__*) ;

__attribute__((used)) static void
unx_party_alerting(struct call *c, struct uni_msg *m, struct uni_all *u,
    int legal)
{
 struct party *p = ((void*)0);

 if (IE_ISGOOD(u->u.party_alerting.epref)) {
  if (u->u.party_alerting.epref.flag == 0) {
   IE_SETERROR(u->u.party_alerting.epref);
   (void)UNI_SAVE_IERR(&c->uni->cx, UNI_IE_EPREF,
       u->u.party_alerting.epref.h.act, UNI_IERR_BAD);
  } else {
       p = uni_find_partyx(c, u->u.party_alerting.epref.epref, 1);
   if (p == ((void*)0)) {
    respond_drop_party_ack(c,
        &u->u.party_alerting.epref,
        UNI_CAUSE_ENDP_INV);
    goto ignore;
   }
  }
 }
 uni_mandate_epref(c->uni, &u->u.party_alerting.epref);

 switch (uni_verify(c->uni, u->u.hdr.act)) {

   case 134:
  uni_vfy_collect_ies(c->uni);
  clear_callD(c);
  goto ignore;

   case 130:
   case 131:
   report:
  uni_respond_status_verify(c->uni, &u->u.hdr.cref,
      map_callstate(c->cstate), &u->u.party_alerting.epref,
      p ? p->state : UNI_EPSTATE_NULL);
   case 133:
  goto ignore;

   case 129:
   case 128:
  uni_respond_status_verify(c->uni, &u->u.hdr.cref,
      map_callstate(c->cstate), &u->u.party_alerting.epref,
      p ? UNI_EPSTATE_ALERT_RCVD : UNI_EPSTATE_NULL);
  if (!IE_ISGOOD(u->u.party_alerting.epref))

   goto ignore;
  break;

   case 132:
  if (!IE_ISGOOD(u->u.party_alerting.epref))



   goto report;
  break;
 }
 if (legal) {

  uni_enq_party(p, SIGP_PARTY_ALERTING, 0, m, u);
  return;
 }
 if (p == ((void*)0))

  respond_drop_party_ack(c, &u->u.party_alerting.epref,
      UNI_CAUSE_ENDP_INV);
 else
  uni_bad_message(c, u, UNI_CAUSE_MSG_INCOMP,
      &u->u.party_alerting.epref, p->state);

  ignore:
 uni_msg_destroy(m);
 UNI_FREE(u);
}
