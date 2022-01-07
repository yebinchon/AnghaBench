
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dts_vstate; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dof_hdr_t ;
typedef int c ;
struct TYPE_7__ {int * dta_enabling; TYPE_1__* dta_state; } ;


 int ASSERT (int) ;
 int B_TRUE ;
 int CE_NOTE ;
 int CE_WARN ;
 int CRED () ;
 int KDI_DTSET_DTRACE_ACTIVATE ;
 int MUTEX_HELD (int *) ;
 int cmn_err (int ,char*) ;
 int cpu_lock ;
 TYPE_5__ dtrace_anon ;
 int dtrace_dof_destroy (int *) ;
 int dtrace_dof_options (int *,TYPE_1__*) ;
 int * dtrace_dof_property (char*) ;
 int dtrace_dof_slurp (int *,int *,int ,int **,int ,int ,int ) ;
 int dtrace_enabling_dump (int *) ;
 int dtrace_enabling_retain (int *) ;
 int dtrace_err_verbose ;
 int dtrace_lock ;
 TYPE_1__* dtrace_state_create (int *,int *) ;
 int dtrace_state_destroy (TYPE_1__*) ;
 scalar_t__ kdi_dtrace_set (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
dtrace_anon_property(void)
{
 int i, rv;
 dtrace_state_t *state;
 dof_hdr_t *dof;
 char c[32];

 ASSERT(MUTEX_HELD(&dtrace_lock));
 ASSERT(MUTEX_HELD(&cpu_lock));

 for (i = 0; ; i++) {
  (void) snprintf(c, sizeof (c), "dof-data-%d", i);

  dtrace_err_verbose = 1;

  if ((dof = dtrace_dof_property(c)) == ((void*)0)) {
   dtrace_err_verbose = 0;
   break;
  }
  if ((state = dtrace_anon.dta_state) == ((void*)0)) {
   state = dtrace_state_create(((void*)0), ((void*)0));
   dtrace_anon.dta_state = state;

   if (state == ((void*)0)) {
    cmn_err(CE_WARN, "failed to create "
        "anonymous state");
    dtrace_dof_destroy(dof);
    break;
   }
  }

  rv = dtrace_dof_slurp(dof, &state->dts_vstate, CRED(),
      &dtrace_anon.dta_enabling, 0, 0, B_TRUE);

  if (rv == 0)
   rv = dtrace_dof_options(dof, state);

  dtrace_err_verbose = 0;
  dtrace_dof_destroy(dof);

  if (rv != 0) {




   ASSERT(dtrace_anon.dta_enabling == ((void*)0));
   dtrace_state_destroy(state);
   dtrace_anon.dta_state = ((void*)0);
   break;
  }

  ASSERT(dtrace_anon.dta_enabling != ((void*)0));
 }

 if (dtrace_anon.dta_enabling != ((void*)0)) {
  int rval;
  rval = dtrace_enabling_retain(dtrace_anon.dta_enabling);
  ASSERT(rval == 0);

  dtrace_enabling_dump(dtrace_anon.dta_enabling);
 }
}
