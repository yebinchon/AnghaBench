
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qid; int scheduler; int local_flags; } ;
struct pf_altq_node {int qstats; TYPE_1__ altq; } ;







 int PFALTQ_FLAG_IF_REMOVED ;
 int print_cbqstats (int ) ;
 int print_codelstats (int ) ;
 int print_fairqstats (int ) ;
 int print_hfscstats (int ) ;
 int print_priqstats (int ) ;

void
pfctl_print_altq_nodestat(int dev, const struct pf_altq_node *a)
{
 if (a->altq.qid == 0 && a->altq.scheduler != 131)
  return;





 switch (a->altq.scheduler) {
 case 132:
  print_cbqstats(a->qstats);
  break;
 case 128:
  print_priqstats(a->qstats);
  break;
 case 129:
  print_hfscstats(a->qstats);
  break;
 case 130:
  print_fairqstats(a->qstats);
  break;
 case 131:
  print_codelstats(a->qstats);
  break;
 }
}
