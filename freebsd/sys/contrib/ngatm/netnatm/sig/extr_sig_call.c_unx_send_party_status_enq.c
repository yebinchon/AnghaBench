
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int epref; } ;
struct TYPE_6__ {TYPE_1__ status_enq; } ;
struct uni_all {TYPE_2__ u; } ;
struct call {int se_active; TYPE_3__* uni; int stat_epref; } ;
struct TYPE_7__ {int timer322; } ;


 int SIGC_SEND_STATUS_ENQ ;
 int SIG_CALL ;
 int TIMER_START_CALL (struct call*,int ,int ) ;
 int UNI_FREE (struct uni_all*) ;
 int t322 ;
 int uni_delenq_sig (TYPE_3__*,int ,struct call*,int *,int ,int ,int *,struct uni_all*) ;
 int uni_send_output (struct uni_all*,TYPE_3__*) ;

__attribute__((used)) static void
unx_send_party_status_enq(struct call *c, struct uni_all *u)
{
 if (c->se_active) {
  uni_delenq_sig(c->uni, SIG_CALL, c, ((void*)0),
      SIGC_SEND_STATUS_ENQ, 0, ((void*)0), u);
  return;
 }

 c->stat_epref = u->u.status_enq.epref;
 (void)uni_send_output(u, c->uni);
 UNI_FREE(u);

 TIMER_START_CALL(c, t322, c->uni->timer322);
 c->se_active = 1;
}
