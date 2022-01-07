
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uni_ie_epref {int flag; int epref; } ;
struct uni_cref {int dummy; } ;
struct TYPE_3__ {int epstate; int epref; int cause; int callstate; } ;
struct TYPE_4__ {TYPE_1__ status; } ;
struct uni_all {TYPE_2__ u; } ;
struct uni {int cause; } ;
typedef enum uni_epstate { ____Placeholder_uni_epstate } uni_epstate ;
typedef enum uni_callstate { ____Placeholder_uni_callstate } uni_callstate ;


 scalar_t__ IE_ISGOOD (struct uni_ie_epref) ;
 int MK_IE_CALLSTATE (int ,int) ;
 int MK_IE_EPREF (int ,int ,int) ;
 int MK_IE_EPSTATE (int ,int) ;
 int MK_MSG_RESP (struct uni_all*,int ,struct uni_cref*) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_STATUS ;
 int uni_send_output (struct uni_all*,struct uni*) ;
 int uni_vfy_collect_ies (struct uni*) ;

void
uni_respond_status_verify(struct uni *uni, struct uni_cref *cref,
    enum uni_callstate cs, struct uni_ie_epref *epref,
    enum uni_epstate ps)
{
 struct uni_all *resp;

 if ((resp = UNI_ALLOC()) == ((void*)0))
  return;

 uni_vfy_collect_ies(uni);

 MK_MSG_RESP(resp, UNI_STATUS, cref);
 MK_IE_CALLSTATE(resp->u.status.callstate, cs);
 resp->u.status.cause = uni->cause;
 if (epref && IE_ISGOOD(*epref)) {
  MK_IE_EPREF(resp->u.status.epref, epref->epref, !epref->flag);
  MK_IE_EPSTATE(resp->u.status.epstate, ps);
 }

 uni_send_output(resp, uni);

 UNI_FREE(resp);
}
