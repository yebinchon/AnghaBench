
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct format_opts {scalar_t__ show_counters; int pcwidth; int bcwidth; int dcnt; } ;
struct cmdline_opts {int use_set; } ;
struct TYPE_2__ {int bcnt; int pcnt; int rule; } ;
typedef TYPE_1__ ipfw_dyn_rule ;


 int bcopy (char*,int*,int) ;
 int pr_u64 (int *,int *,int ) ;

__attribute__((used)) static void
prepare_format_dyn(struct cmdline_opts *co, struct format_opts *fo,
    void *arg, void *_state)
{
 ipfw_dyn_rule *d;
 int width;
 uint8_t set;

 d = (ipfw_dyn_rule *)_state;

 fo->dcnt++;

 if (fo->show_counters == 0)
  return;

 if (co->use_set) {

  bcopy((char *)&d->rule + sizeof(uint16_t), &set,
      sizeof(uint8_t));
  if (set != co->use_set - 1)
   return;
 }

 width = pr_u64(((void*)0), &d->pcnt, 0);
 if (width > fo->pcwidth)
  fo->pcwidth = width;

 width = pr_u64(((void*)0), &d->bcnt, 0);
 if (width > fo->bcwidth)
  fo->bcwidth = width;
}
