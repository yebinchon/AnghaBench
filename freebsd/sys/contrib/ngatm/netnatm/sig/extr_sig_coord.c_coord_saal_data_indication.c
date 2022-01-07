
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_7__ {scalar_t__ cref; } ;
struct TYPE_5__ {TYPE_3__ cref; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
struct uni_all {TYPE_2__ u; } ;
struct TYPE_8__ {scalar_t__ q2932; } ;
struct uni {TYPE_4__ cx; int cause; } ;
struct call {scalar_t__ type; } ;


 scalar_t__ CALL_COBI ;
 scalar_t__ CREF_DUMMY ;
 scalar_t__ CREF_GLOBAL ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_FAC_COORD ;
 int UNI_FREE (struct uni_all*) ;
 int VERBOSE (struct uni*,int ,int,char*) ;
 int input_call (struct call*,struct uni_msg*,struct uni_all*) ;
 int input_cobi (struct call*,struct uni_msg*,struct uni_all*) ;
 int input_dummy (struct uni*,struct uni_msg*,struct uni_all*) ;
 int input_global (struct uni*,struct uni_msg*,struct uni_all*) ;
 int input_unknown (struct uni*,struct uni_msg*,struct uni_all*) ;
 int memset (int *,int ,int) ;
 scalar_t__ uni_decode_head (struct uni_msg*,struct uni_all*,TYPE_4__*) ;
 struct call* uni_find_call (struct uni*,TYPE_3__*) ;
 int uni_msg_destroy (struct uni_msg*) ;

__attribute__((used)) static void
coord_saal_data_indication(struct uni *uni, struct uni_msg *m)
{
 struct uni_all *u;
 struct call *c;

 memset(&uni->cause, 0, sizeof(uni->cause));
 if ((u = UNI_ALLOC()) == ((void*)0)) {
  uni_msg_destroy(m);
  return;
 }
 if (uni_decode_head(m, u, &uni->cx)) {
  VERBOSE(uni, UNI_FAC_COORD, 2, "bogus message - ignored");
  uni_msg_destroy(m);
  UNI_FREE(u);
  return;
 }
 if (u->u.hdr.cref.cref == CREF_DUMMY) {
  if (uni->cx.q2932) {
   input_dummy(uni, m, u);
  } else {
   VERBOSE(uni, UNI_FAC_COORD, 2, "dummy cref - ignored");
   UNI_FREE(u);
   uni_msg_destroy(m);
  }
  return;
 }

 if (u->u.hdr.cref.cref == CREF_GLOBAL)
  input_global(uni, m, u);
 else if ((c = uni_find_call(uni, &u->u.hdr.cref)) == ((void*)0))
  input_unknown(uni, m, u);
 else if (c->type == CALL_COBI)
  input_cobi(c, m, u);
 else
  input_call(c, m, u);
}
