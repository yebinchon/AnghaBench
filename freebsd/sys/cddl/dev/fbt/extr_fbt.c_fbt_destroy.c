
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fbt_nentries; } ;
typedef TYPE_1__ modctl_t ;
struct TYPE_5__ {struct TYPE_5__* fbtp_probenext; TYPE_1__* fbtp_ctl; } ;
typedef TYPE_2__ fbt_probe_t ;
typedef int dtrace_id_t ;


 int fbt_destroy_one (TYPE_2__*) ;

__attribute__((used)) static void
fbt_destroy(void *arg, dtrace_id_t id, void *parg)
{
 fbt_probe_t *fbt = parg, *next;
 modctl_t *ctl;

 do {
  ctl = fbt->fbtp_ctl;
  ctl->fbt_nentries--;

  next = fbt->fbtp_probenext;
  fbt_destroy_one(fbt);
  fbt = next;
 } while (fbt != ((void*)0));
}
