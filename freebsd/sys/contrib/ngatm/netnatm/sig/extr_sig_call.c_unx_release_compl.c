
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uni_msg {int dummy; } ;
struct TYPE_4__ {int act; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct uni_all {TYPE_2__ u; } ;
struct call {TYPE_3__* uni; } ;
struct TYPE_6__ {int cx; } ;


 int UNI_FREE (struct uni_all*) ;
 int uni_decode_body (struct uni_msg*,struct uni_all*,int *) ;
 int uni_msg_destroy (struct uni_msg*) ;
 int uni_release_compl (struct call*,struct uni_all*) ;
 int uni_verify (TYPE_3__*,int ) ;

__attribute__((used)) static void
unx_release_compl(struct call *c, struct uni_msg *m, struct uni_all *u)
{

 (void)uni_decode_body(m, u, &c->uni->cx);
 (void)uni_verify(c->uni, u->u.hdr.act);

 uni_release_compl(c, u);

 uni_msg_destroy(m);
 UNI_FREE(u);
}
