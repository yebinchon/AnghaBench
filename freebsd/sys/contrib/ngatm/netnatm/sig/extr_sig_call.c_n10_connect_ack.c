
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_7__ {int cref; int act; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct uni_all {TYPE_1__ u; } ;
struct call {int cstate; TYPE_3__* uni; } ;
struct TYPE_8__ {int cx; } ;


 int UNI_FREE (struct uni_all*) ;







 int clear_callD (struct call*) ;
 int map_callstate (int ) ;
 int uni_decode_body (struct uni_msg*,struct uni_all*,int *) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_respond_status_verify (TYPE_3__*,int *,int ,int *,int ) ;
 int uni_verify (TYPE_3__*,int ) ;
 int uni_vfy_collect_ies (TYPE_3__*) ;

__attribute__((used)) static void
n10_connect_ack(struct call *c, struct uni_msg *m, struct uni_all *u)
{



 (void)uni_decode_body(m, u, &c->uni->cx);

 switch (uni_verify(c->uni, u->u.hdr.act)) {

   case 134:
  uni_vfy_collect_ies(c->uni);
  clear_callD(c);

   case 133:
  uni_msg_destroy(m);
  UNI_FREE(u);
    return;

   case 130:
   case 131:
   case 129:
   case 128:
  uni_respond_status_verify(c->uni, &u->u.hdr.cref,
      map_callstate(c->cstate), ((void*)0), 0);

   case 132:
  uni_msg_destroy(m);
  UNI_FREE(u);
    return;
 }
}
