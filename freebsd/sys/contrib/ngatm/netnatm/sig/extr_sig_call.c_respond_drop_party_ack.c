
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct uni_ie_epref {int flag; int epref; } ;
struct TYPE_3__ {int cause; int epref; } ;
struct TYPE_4__ {TYPE_1__ drop_party_ack; } ;
struct uni_all {TYPE_2__ u; } ;
struct call {int uni; int mine; int cref; } ;


 int MK_IE_CAUSE (int ,int ,int ) ;
 int MK_IE_EPREF (int ,int ,int) ;
 int MK_MSG_ORIG (struct uni_all*,int ,int ,int) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_DROP_PARTY_ACK ;
 int UNI_FREE (struct uni_all*) ;
 int uni_send_output (struct uni_all*,int ) ;

__attribute__((used)) static void
respond_drop_party_ack(struct call *c, struct uni_ie_epref *epref,
    u_int cause)
{
 struct uni_all *msg;

 if ((msg = UNI_ALLOC()) == ((void*)0))
  return;

 MK_MSG_ORIG(msg, UNI_DROP_PARTY_ACK, c->cref, !c->mine);
 MK_IE_EPREF(msg->u.drop_party_ack.epref, epref->epref, !epref->flag);
 MK_IE_CAUSE(msg->u.drop_party_ack.cause, UNI_CAUSE_LOC_USER, cause);
 (void)uni_send_output(msg, c->uni);
 UNI_FREE(msg);
}
