
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
struct call {scalar_t__ cnt322; TYPE_3__* uni; scalar_t__ se_active; int stat_epref; scalar_t__ mine; int cref; } ;
struct TYPE_7__ {scalar_t__ init322; int cause; int timer322; } ;


 int ADD_CAUSE_TIMER (int ,char*) ;
 int MK_IE_CAUSE (int ,int ,int ) ;
 int MK_MSG_ORIG (struct uni_all*,int ,int ,int) ;
 int TIMER_START_CALL (struct call*,int ,int ) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_CAUSE_LOC_USER ;
 int UNI_CAUSE_RECOVER ;
 int UNI_FAC_TIMEOUT ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_STATUS_ENQ ;
 int VERBOSE (TYPE_3__*,int ,int,char*,int ,char*,scalar_t__) ;
 int clear_callD (struct call*) ;
 int t322 ;
 int uni_send_output (struct uni_all*,TYPE_3__*) ;

__attribute__((used)) static void
unx_t322(struct call *c)
{
 struct uni_all *stat;

 VERBOSE(c->uni, UNI_FAC_TIMEOUT, 1, "call %u/%s T322 tick %d",
     c->cref, c->mine ? "mine" : "his", c->cnt322 + 1);

 if (++c->cnt322 < c->uni->init322) {
  if ((stat = UNI_ALLOC()) != ((void*)0)) {
   MK_MSG_ORIG(stat, UNI_STATUS_ENQ, c->cref, !c->mine);
   stat->u.status_enq.epref = c->stat_epref;
   (void)uni_send_output(stat, c->uni);
   UNI_FREE(stat);
  }
  TIMER_START_CALL(c, t322, c->uni->timer322);
  return;
 }
 c->se_active = 0;

 MK_IE_CAUSE(c->uni->cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_RECOVER);
 ADD_CAUSE_TIMER(c->uni->cause, "322");

 clear_callD(c);
}
