
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udma_rlimit_common {int dummy; } ;
struct al_udma_q {int qid; TYPE_3__* udma; TYPE_2__* q_regs; } ;
typedef enum al_udma_m2s_rlimit_action { ____Placeholder_al_udma_m2s_rlimit_action } al_udma_m2s_rlimit_action ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {struct udma_rlimit_common rlimit; } ;
struct TYPE_5__ {TYPE_1__ m2s_q; } ;


 int EINVAL ;
 int al_err (char*,int ,int ,int) ;
 int al_udma_common_rlimit_act (struct udma_rlimit_common*,int) ;

int al_udma_m2s_q_rlimit_act(struct al_udma_q *udma_q,
    enum al_udma_m2s_rlimit_action act)
{
 struct udma_rlimit_common *rlimit_regs = &udma_q->q_regs->m2s_q.rlimit;

 if (al_udma_common_rlimit_act(rlimit_regs, act) == -EINVAL) {
  al_err("udma [%s %d]: udma stream rate limit invalid action "
    "(%d)\n",
    udma_q->udma->name, udma_q->qid, act);
  return -EINVAL;
 }
 return 0;
}
