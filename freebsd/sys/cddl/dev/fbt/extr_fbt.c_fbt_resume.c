
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nenabled; scalar_t__ loadcnt; } ;
typedef TYPE_1__ modctl_t ;
struct TYPE_5__ {scalar_t__ fbtp_loadcnt; int fbtp_patchval; struct TYPE_5__* fbtp_probenext; TYPE_1__* fbtp_ctl; } ;
typedef TYPE_2__ fbt_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int fbt_patch_tracepoint (TYPE_2__*,int ) ;

__attribute__((used)) static void
fbt_resume(void *arg, dtrace_id_t id, void *parg)
{
 fbt_probe_t *fbt = parg;
 modctl_t *ctl = fbt->fbtp_ctl;

 ASSERT(ctl->nenabled > 0);

 if ((ctl->loadcnt != fbt->fbtp_loadcnt))
  return;

 for (; fbt != ((void*)0); fbt = fbt->fbtp_probenext)
  fbt_patch_tracepoint(fbt, fbt->fbtp_patchval);
}
