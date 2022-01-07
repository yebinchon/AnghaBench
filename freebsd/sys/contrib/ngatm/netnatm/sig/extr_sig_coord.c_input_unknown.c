
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int ;
struct uni_msg {int dummy; } ;
struct TYPE_13__ {int * cause; } ;
struct TYPE_15__ {int cref; int flag; } ;
struct TYPE_12__ {TYPE_6__ cref; } ;
struct TYPE_16__ {int flag; int epref; int state; } ;
struct TYPE_11__ {int epstate; TYPE_7__ epref; int cause; TYPE_7__ callstate; } ;
struct TYPE_10__ {TYPE_7__ epref; } ;
struct TYPE_14__ {TYPE_4__ release_compl; TYPE_3__ hdr; TYPE_2__ status; TYPE_1__ status_enq; } ;
struct uni_all {int mtype; TYPE_5__ u; } ;
struct uni {int cx; } ;
struct call {int dummy; } ;


 int ADD_CAUSE_MTYPE (int ,int) ;
 int IE_ISGOOD (TYPE_7__) ;
 int MK_IE_CALLSTATE (TYPE_7__,int ) ;
 int MK_IE_CAUSE (int ,int ,int ) ;
 int MK_IE_EPREF (TYPE_7__,int ,int) ;
 int MK_IE_EPSTATE (int ,int ) ;
 int MK_MSG_RESP (struct uni_all*,int const,TYPE_6__*) ;
 int SIGC_COBISETUP ;
 int SIGC_SETUP ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_CALLSTATE_U0 ;
 int UNI_CAUSE_CREF_INV ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_MSG_INCOMP ;
 int UNI_CAUSE_STATUS ;

 int UNI_CODING_ITU ;
 scalar_t__ UNI_DIAG_MTYPE ;
 int UNI_EPSTATE_NULL ;
 int UNI_FAC_COORD ;
 int UNI_FREE (struct uni_all*) ;




 int VERBOSE (struct uni*,int ,int,char*,int) ;
 struct call* uni_create_call (struct uni*,int ,int ,int ) ;
 int uni_decode_body (struct uni_msg*,struct uni_all*,int *) ;
 scalar_t__ uni_diag (int ,int ) ;
 int uni_enq_call (struct call*,int ,int ,struct uni_msg*,struct uni_all*) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_send_output (struct uni_all*,struct uni*) ;

__attribute__((used)) static void
input_unknown(struct uni *uni, struct uni_msg *m, struct uni_all *u)
{
 struct uni_all *resp;
 struct call *c;
 u_int cause = UNI_CAUSE_CREF_INV;

 VERBOSE(uni, UNI_FAC_COORD, 2, "UNKNOWN MTYPE = %x", u->mtype);

 switch (u->mtype) {

   default:






  break;

   case 130:
  if (u->u.hdr.cref.flag)



   goto drop;
  if ((c = uni_create_call(uni, u->u.hdr.cref.cref, 0, 0)) != ((void*)0)) {
   uni_enq_call(c, SIGC_SETUP, 0, m, u);
   return;
  }
  goto drop;

   case 131:



  goto drop;

   case 129:







  (void)uni_decode_body(m, u, &uni->cx);
  if (!IE_ISGOOD(u->u.status.callstate))
   goto drop;
  if (u->u.status.callstate.state == UNI_CALLSTATE_U0)
   goto drop;
  cause = UNI_CAUSE_MSG_INCOMP;
  break;

   case 128:
  if ((resp = UNI_ALLOC()) == ((void*)0))
   goto drop;

  (void)uni_decode_body(m, u, &uni->cx);
  MK_MSG_RESP(resp, 129, &u->u.hdr.cref);
  MK_IE_CALLSTATE(resp->u.status.callstate, UNI_CALLSTATE_U0);
  MK_IE_CAUSE(resp->u.status.cause, UNI_CAUSE_LOC_USER,
      UNI_CAUSE_STATUS);

  if (IE_ISGOOD(u->u.status_enq.epref)) {

   resp->u.status.epref = u->u.status_enq.epref;
   MK_IE_EPREF(resp->u.status.epref,
       u->u.status_enq.epref.epref,
       !u->u.status_enq.epref.flag);
   MK_IE_EPSTATE(resp->u.status.epstate, UNI_EPSTATE_NULL);
  }

  (void)uni_send_output(resp, uni);

  UNI_FREE(resp);
  goto drop;

   case 132:
  if (u->u.hdr.cref.flag)



   goto drop;
  if ((c = uni_create_call(uni, u->u.hdr.cref.cref, 0, 0)) != ((void*)0)) {
   uni_enq_call(c, SIGC_COBISETUP, 0, m, u);
   return;
  }
  goto drop;
 }






 if ((resp = UNI_ALLOC()) == ((void*)0))
  goto drop;

 MK_MSG_RESP(resp, 131, &u->u.hdr.cref);
 MK_IE_CAUSE(resp->u.release_compl.cause[0], UNI_CAUSE_LOC_USER, cause);
 if (uni_diag(cause, UNI_CODING_ITU) == UNI_DIAG_MTYPE)
  ADD_CAUSE_MTYPE(resp->u.release_compl.cause[0], u->mtype);

 (void)uni_send_output(resp, uni);

 UNI_FREE(resp);

  drop:
 UNI_FREE(u);
 uni_msg_destroy(m);
}
