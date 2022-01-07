
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct uni_ie_epref {int flag; int epref; } ;
struct TYPE_6__ {int epstate; int epref; int cause; int callstate; } ;
struct TYPE_5__ {scalar_t__ act; int cref; } ;
struct TYPE_7__ {TYPE_2__ status; TYPE_1__ hdr; } ;
struct uni_all {TYPE_3__ u; int mtype; } ;
struct party {int state; } ;
struct call {scalar_t__ cstate; TYPE_4__* uni; } ;
struct TYPE_8__ {int cause; } ;


 int ADD_CAUSE_MTYPE (int ,int ) ;
 scalar_t__ CALLST_N11 ;
 scalar_t__ CALLST_N12 ;
 scalar_t__ CALLST_U11 ;
 scalar_t__ CALLST_U12 ;
 scalar_t__ IE_ISGOOD (struct uni_ie_epref) ;
 int MK_IE_CALLSTATE (int ,int ) ;
 int MK_IE_CAUSE (int ,int ,int ) ;
 int MK_IE_EPREF (int ,int ,int) ;
 int MK_IE_EPSTATE (int ,int) ;
 int MK_MSG_RESP (struct uni_all*,int ,int *) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_EPSTATE_NULL ;
 int UNI_FREE (struct uni_all*) ;
 scalar_t__ UNI_MSGACT_CLEAR ;
 scalar_t__ UNI_MSGACT_IGNORE ;
 int UNI_STATUS ;
 int clear_callD (struct call*) ;
 int map_callstate (scalar_t__) ;
 struct party* uni_find_party (struct call*,struct uni_ie_epref*) ;
 int uni_send_output (struct uni_all*,TYPE_4__*) ;

void
uni_bad_message(struct call *c, struct uni_all *u, u_int cause,
    struct uni_ie_epref *epref, int ps)
{
 struct uni_all *resp;
 struct party *p;

 if ((u->u.hdr.act == UNI_MSGACT_CLEAR &&
     (c->cstate == CALLST_U11 ||
      c->cstate == CALLST_U12 ||
      c->cstate == CALLST_N11 ||
      c->cstate == CALLST_N12)) ||
     u->u.hdr.act == UNI_MSGACT_IGNORE)
  return;

 MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER, cause);
 ADD_CAUSE_MTYPE(c->uni->cause, u->mtype);

 if (u->u.hdr.act == UNI_MSGACT_CLEAR) {
  clear_callD(c);
  return;
 }




 if ((resp = UNI_ALLOC()) != ((void*)0)) {
  MK_MSG_RESP(resp, UNI_STATUS, &u->u.hdr.cref);
  MK_IE_CALLSTATE(resp->u.status.callstate,
      map_callstate(c->cstate));
  resp->u.status.cause = c->uni->cause;

  if (epref != ((void*)0) && IE_ISGOOD(*epref)) {
   MK_IE_EPREF(resp->u.status.epref, epref->epref, !epref->flag);
   if (ps == -1) {
    p = uni_find_party(c, epref);
    if (p == ((void*)0))
     ps = UNI_EPSTATE_NULL;
    else
     ps = p->state;
   }
   MK_IE_EPSTATE(resp->u.status.epstate, ps);
  }
  (void)uni_send_output(resp, c->uni);

  UNI_FREE(resp);
 }
}
