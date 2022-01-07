
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct codel_opts {int target; int interval; scalar_t__ ecn; } ;
struct TYPE_2__ {struct codel_opts codel_opts; } ;
struct pf_altq {TYPE_1__ pq_u; } ;
struct node_queue_opt {int dummy; } ;


 int printf (char*,...) ;

__attribute__((used)) static int
print_codel_opts(const struct pf_altq *a, const struct node_queue_opt *qopts)
{
 const struct codel_opts *opts;

 opts = &a->pq_u.codel_opts;
 if (opts->target || opts->interval || opts->ecn) {
  printf("codel(");
  if (opts->target)
   printf(" target %d", opts->target);
  if (opts->interval)
   printf(" interval %d", opts->interval);
  if (opts->ecn)
   printf("ecn");
  printf(" ) ");

  return (1);
 }

 return (0);
}
