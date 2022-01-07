
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_dynvar_t ;
struct TYPE_4__ {int dtds_state; TYPE_2__* dtds_percpu; } ;
typedef TYPE_1__ dtrace_dstate_t ;
struct TYPE_5__ {int * dtdsc_rinsing; int * dtdsc_clean; int * dtdsc_dirty; } ;
typedef TYPE_2__ dtrace_dstate_percpu_t ;


 int ASSERT (int ) ;
 int DTRACE_DSTATE_CLEAN ;
 int NCPU ;
 int * dtrace_casptr (int **,int *,int *) ;
 int dtrace_dynvar_failclean ;
 int dtrace_membar_producer () ;
 int dtrace_sync () ;

void
dtrace_dynvar_clean(dtrace_dstate_t *dstate)
{
 dtrace_dynvar_t *dirty;
 dtrace_dstate_percpu_t *dcpu;
 dtrace_dynvar_t **rinsep;
 int i, j, work = 0;

 for (i = 0; i < NCPU; i++) {
  dcpu = &dstate->dtds_percpu[i];
  rinsep = &dcpu->dtdsc_rinsing;




  if (dcpu->dtdsc_dirty == ((void*)0))
   continue;

  if (dcpu->dtdsc_rinsing != ((void*)0)) {
   continue;
  }

  if (dcpu->dtdsc_clean != ((void*)0)) {
   for (j = 0; j < NCPU; j++) {
    dtrace_dstate_percpu_t *rinser;

    rinser = &dstate->dtds_percpu[j];

    if (rinser->dtdsc_rinsing != ((void*)0))
     continue;

    if (rinser->dtdsc_dirty != ((void*)0))
     continue;

    if (rinser->dtdsc_clean != ((void*)0))
     continue;

    rinsep = &rinser->dtdsc_rinsing;
    break;
   }

   if (j == NCPU) {





    dtrace_dynvar_failclean++;
    continue;
   }
  }

  work = 1;




  do {
   dirty = dcpu->dtdsc_dirty;
   *rinsep = dirty;
   dtrace_membar_producer();
  } while (dtrace_casptr(&dcpu->dtdsc_dirty,
      dirty, ((void*)0)) != dirty);
 }

 if (!work) {



  return;
 }

 dtrace_sync();

 for (i = 0; i < NCPU; i++) {
  dcpu = &dstate->dtds_percpu[i];

  if (dcpu->dtdsc_rinsing == ((void*)0))
   continue;





  ASSERT(dcpu->dtdsc_clean == ((void*)0));
  dcpu->dtdsc_clean = dcpu->dtdsc_rinsing;
  dcpu->dtdsc_rinsing = ((void*)0);
 }
 dtrace_sync();

 dstate->dtds_state = DTRACE_DSTATE_CLEAN;
}
