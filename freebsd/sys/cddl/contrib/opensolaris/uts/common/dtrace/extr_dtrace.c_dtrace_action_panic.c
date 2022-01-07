
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dtpr_name; int dtpr_func; int dtpr_mod; TYPE_1__* dtpr_provider; } ;
typedef TYPE_2__ dtrace_probe_t ;
struct TYPE_7__ {TYPE_2__* dte_probe; } ;
typedef TYPE_3__ dtrace_ecb_t ;
struct TYPE_5__ {int dtpv_name; } ;


 int ASSERT (int ) ;
 int curthread ;
 int * dtrace_casptr (int **,int *,int ) ;
 scalar_t__ dtrace_destructive_disallow ;
 int dtrace_panic (char*,int ,int ,int ,int ,void*) ;
 int * dtrace_panicked ;

__attribute__((used)) static void
dtrace_action_panic(dtrace_ecb_t *ecb)
{
 dtrace_probe_t *probe = ecb->dte_probe;




 ASSERT(probe != ((void*)0));

 if (dtrace_destructive_disallow)
  return;

 if (dtrace_panicked != ((void*)0))
  return;

 if (dtrace_casptr(&dtrace_panicked, ((void*)0), curthread) != ((void*)0))
  return;






 dtrace_panic("dtrace: panic action at probe %s:%s:%s:%s (ecb %p)",
     probe->dtpr_provider->dtpv_name, probe->dtpr_mod,
     probe->dtpr_func, probe->dtpr_name, (void *)ecb);
}
