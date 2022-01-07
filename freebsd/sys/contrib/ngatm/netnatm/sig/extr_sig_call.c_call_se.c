
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uni_all {int dummy; } ;
struct call {int se_active; TYPE_1__* uni; int mine; int cref; int stat_epref; scalar_t__ cnt322; } ;
struct TYPE_2__ {int timer322; } ;


 int MK_MSG_ORIG (struct uni_all*,int ,int ,int) ;
 int TIMER_START_CALL (struct call*,int ,int ) ;
 struct uni_all* UNI_ALLOC () ;
 int UNI_FREE (struct uni_all*) ;
 int UNI_STATUS_ENQ ;
 int memset (int *,int ,int) ;
 int t322 ;
 int uni_send_output (struct uni_all*,TYPE_1__*) ;

__attribute__((used)) static void
call_se(struct call *c)
{
 struct uni_all *stat;

 c->cnt322 = 0;
 if (c->se_active)
  return;

 memset(&c->stat_epref, 0, sizeof(c->stat_epref));
 if ((stat = UNI_ALLOC()) != ((void*)0)) {
  MK_MSG_ORIG(stat, UNI_STATUS_ENQ, c->cref, !c->mine);
  (void)uni_send_output(stat, c->uni);
  UNI_FREE(stat);
 }

 TIMER_START_CALL(c, t322, c->uni->timer322);
 c->se_active = 1;
}
