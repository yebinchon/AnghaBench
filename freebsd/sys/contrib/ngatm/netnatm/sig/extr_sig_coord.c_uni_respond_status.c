
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uni_cref {int dummy; } ;
struct TYPE_3__ {int cause; int callstate; } ;
struct TYPE_4__ {TYPE_1__ status; } ;
struct uni_all {TYPE_2__ u; } ;
struct uni {int dummy; } ;
typedef enum uni_cause { ____Placeholder_uni_cause } uni_cause ;
typedef enum uni_callstate { ____Placeholder_uni_callstate } uni_callstate ;


 int MK_IE_CALLSTATE (int ,int) ;
 int MK_IE_CAUSE (int ,int ,int) ;
 int MK_MSG_RESP (struct uni_all*,int ,struct uni_cref*) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_STATUS ;
 int uni_send_output (struct uni_all*,struct uni*) ;

void
uni_respond_status(struct uni *uni, struct uni_cref *cref,
    enum uni_callstate cs, enum uni_cause c1)
{
 struct uni_all *resp;

 if ((resp = UNI_ALLOC()) == ((void*)0))
  return;

 MK_MSG_RESP(resp, UNI_STATUS, cref);
 MK_IE_CALLSTATE(resp->u.status.callstate, cs);
 MK_IE_CAUSE(resp->u.status.cause, UNI_CAUSE_LOC_USER, c1);

 (void)uni_send_output(resp, uni);

 UNI_FREE(resp);
}
