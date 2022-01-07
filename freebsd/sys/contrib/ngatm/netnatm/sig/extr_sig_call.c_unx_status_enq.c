
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int ;
struct uni_msg {int dummy; } ;
struct TYPE_12__ {int cause; int callstate; int epstate; int epref; } ;
struct TYPE_15__ {int flag; int epref; } ;
struct TYPE_11__ {TYPE_8__ epref; } ;
struct TYPE_10__ {int act; } ;
struct TYPE_13__ {TYPE_3__ status; TYPE_2__ status_enq; TYPE_1__ hdr; } ;
struct uni_all {TYPE_4__ u; } ;
struct party {int state; } ;
struct call {scalar_t__ type; TYPE_5__* uni; int cstate; int mine; int cref; } ;
struct TYPE_14__ {int cx; } ;


 scalar_t__ CALL_LEAF ;
 scalar_t__ CALL_ROOT ;
 scalar_t__ IE_ISGOOD (TYPE_8__) ;
 int MK_IE_CALLSTATE (int ,int ) ;
 int MK_IE_CAUSE (int ,int ,int ) ;
 int MK_IE_EPREF (int ,int ,int) ;
 int MK_IE_EPSTATE (int ,int ) ;
 int MK_MSG_ORIG (struct uni_all*,int ,int ,int) ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_STATUS ;
 int UNI_EPSTATE_NULL ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_STATUS ;







 int clear_callD (struct call*) ;
 int map_callstate (int ) ;
 int memset (struct uni_all*,int ,int) ;
 int uni_decode_body (struct uni_msg*,struct uni_all*,int *) ;
 struct party* uni_find_party (struct call*,TYPE_8__*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_send_output (struct uni_all*,TYPE_5__*) ;
 int uni_verify (TYPE_5__*,int ) ;
 int uni_vfy_collect_ies (TYPE_5__*) ;

__attribute__((used)) static void
unx_status_enq(struct call *c, struct uni_msg *m, struct uni_all *u)
{
 struct party *p = ((void*)0);
 u_int epref, flag;




 (void)uni_decode_body(m, u, &c->uni->cx);

 switch (uni_verify(c->uni, u->u.hdr.act)) {

   case 134:
  uni_vfy_collect_ies(c->uni);
  clear_callD(c);
  uni_msg_destroy(m);
  UNI_FREE(u);
    return;

   case 130:
   case 131:
   case 129:
   case 128:
   case 133:
   case 132:
    break;
 }

 uni_msg_destroy(m);

 if ((c->type == CALL_ROOT || c->type == CALL_LEAF) &&
     IE_ISGOOD(u->u.status_enq.epref)) {
  p = uni_find_party(c, &u->u.status_enq.epref);

  epref = u->u.status_enq.epref.epref;
  flag = u->u.status_enq.epref.flag;
  memset(u, 0, sizeof(*u));
  MK_IE_EPREF(u->u.status.epref, epref, !flag);

  if (p != ((void*)0))
   MK_IE_EPSTATE(u->u.status.epstate, p->state);
  else
   MK_IE_EPSTATE(u->u.status.epstate, UNI_EPSTATE_NULL);
 } else
  memset(u, 0, sizeof(*u));


 MK_MSG_ORIG(u, UNI_STATUS, c->cref, !c->mine);
 MK_IE_CALLSTATE(u->u.status.callstate, map_callstate(c->cstate));
 MK_IE_CAUSE(u->u.status.cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_STATUS);
 (void)uni_send_output(u, c->uni);
 UNI_FREE(u);
}
