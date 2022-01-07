
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dten_ndesc; int dten_error; int dten_probegen; TYPE_2__* dten_current; TYPE_2__** dten_desc; } ;
typedef TYPE_1__ dtrace_enabling_t ;
struct TYPE_6__ {int dted_probe; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;


 int ASSERT (int ) ;
 int CE_WARN ;
 int MUTEX_HELD (int *) ;
 int cmn_err (int ,char*,void*,int) ;
 int cpu_lock ;
 int dtrace_lock ;
 scalar_t__ dtrace_probe_enable (int *,TYPE_1__*) ;
 int dtrace_probegen ;

__attribute__((used)) static int
dtrace_enabling_match(dtrace_enabling_t *enab, int *nmatched)
{
 int i = 0;
 int matched = 0;

 ASSERT(MUTEX_HELD(&cpu_lock));
 ASSERT(MUTEX_HELD(&dtrace_lock));

 for (i = 0; i < enab->dten_ndesc; i++) {
  dtrace_ecbdesc_t *ep = enab->dten_desc[i];

  enab->dten_current = ep;
  enab->dten_error = 0;

  matched += dtrace_probe_enable(&ep->dted_probe, enab);

  if (enab->dten_error != 0) {
   if (nmatched == ((void*)0)) {
    cmn_err(CE_WARN, "dtrace_enabling_match() "
        "error on %p: %d", (void *)ep,
        enab->dten_error);
   }

   return (enab->dten_error);
  }
 }

 enab->dten_probegen = dtrace_probegen;
 if (nmatched != ((void*)0))
  *nmatched = matched;

 return (0);
}
