
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
struct TYPE_2__ {int * pp_syscallnames; } ;


 int MAXSYSCALL ;
 int MODNAME ;
 int SYSTRACE_ARTIFICIAL_FRAMES ;
 scalar_t__ SYSTRACE_ENTRY (int) ;
 scalar_t__ SYSTRACE_RETURN (int) ;
 int dtrace_probe_create (int ,int ,int ,char*,int ,void*) ;
 scalar_t__ dtrace_probe_lookup (int ,int ,int ,char*) ;
 int systrace_id ;
 TYPE_1__ uglyhack ;

__attribute__((used)) static void
systrace_provide(void *arg, dtrace_probedesc_t *desc)
{
 int i;

 if (desc != ((void*)0))
  return;

 for (i = 0; i < MAXSYSCALL; i++) {
  if (dtrace_probe_lookup(systrace_id, MODNAME,
      uglyhack.pp_syscallnames[i], "entry") != 0)
   continue;

  (void)dtrace_probe_create(systrace_id, MODNAME,
      uglyhack.pp_syscallnames[i], "entry",
      SYSTRACE_ARTIFICIAL_FRAMES,
      (void *)((uintptr_t)SYSTRACE_ENTRY(i)));
  (void)dtrace_probe_create(systrace_id, MODNAME,
      uglyhack.pp_syscallnames[i], "return",
      SYSTRACE_ARTIFICIAL_FRAMES,
      (void *)((uintptr_t)SYSTRACE_RETURN(i)));
 }
}
