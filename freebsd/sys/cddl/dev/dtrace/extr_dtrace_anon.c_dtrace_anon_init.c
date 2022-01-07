
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_state_t ;
typedef int dtrace_enabling_t ;
struct TYPE_2__ {int dta_beganon; int * dta_enabling; int * dta_state; } ;


 int ASSERT (int) ;
 int cpu_lock ;
 TYPE_1__ dtrace_anon ;
 int dtrace_anon_property () ;
 int dtrace_enabling_match (int *,int *) ;
 int dtrace_enabling_provide (int *) ;
 int dtrace_lock ;
 int dtrace_provider_lock ;
 int * dtrace_retained ;
 int dtrace_state_go (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
dtrace_anon_init(void *dummy)
{
 dtrace_state_t *state = ((void*)0);
 dtrace_enabling_t *enab;

 mutex_enter(&cpu_lock);
 mutex_enter(&dtrace_provider_lock);
 mutex_enter(&dtrace_lock);

 dtrace_anon_property();

 mutex_exit(&cpu_lock);
 if (dtrace_anon.dta_enabling != ((void*)0)) {
  ASSERT(dtrace_retained == dtrace_anon.dta_enabling);

  dtrace_enabling_provide(((void*)0));
  state = dtrace_anon.dta_state;
  mutex_exit(&dtrace_lock);
  mutex_exit(&dtrace_provider_lock);

  mutex_enter(&cpu_lock);
  mutex_enter(&dtrace_provider_lock);
  mutex_enter(&dtrace_lock);

  if ((enab = dtrace_anon.dta_enabling) != ((void*)0))
   (void) dtrace_enabling_match(enab, ((void*)0));

  mutex_exit(&cpu_lock);
 }

 mutex_exit(&dtrace_provider_lock);
 mutex_exit(&dtrace_lock);

 if (state != ((void*)0)) {



  (void) dtrace_state_go(state, &dtrace_anon.dta_beganon);
 }
}
