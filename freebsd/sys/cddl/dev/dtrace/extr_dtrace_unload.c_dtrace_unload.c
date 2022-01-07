
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dts_necbs; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_provider_id_t ;
typedef int dtrace_anon_t ;


 int ASSERT (int) ;
 int EBUSY ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int bzero (int *,int) ;
 int cpu_lock ;
 int delete_unrhdr (int ) ;
 int destroy_dev (int ) ;
 int dtrace_anon ;
 TYPE_1__* dtrace_anon_grab () ;
 int dtrace_arena ;
 int * dtrace_byfunc ;
 int * dtrace_bymod ;
 int * dtrace_byname ;
 int dtrace_dev ;
 int dtrace_errlock ;
 int dtrace_hash_destroy (int *) ;
 scalar_t__ dtrace_helpers ;
 int dtrace_invop_uninit () ;
 int dtrace_kld_load_tag ;
 int dtrace_kld_unload_try_tag ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 scalar_t__ dtrace_nprobes ;
 scalar_t__ dtrace_opens ;
 int * dtrace_probes ;
 int * dtrace_provider ;
 int dtrace_provider_lock ;
 int * dtrace_retained ;
 int dtrace_state_cache ;
 int dtrace_state_destroy (TYPE_1__*) ;
 int dtrace_taskq ;
 int * dtrace_toxrange ;
 scalar_t__ dtrace_toxranges ;
 scalar_t__ dtrace_toxranges_max ;
 int * dtrace_trap_func ;
 scalar_t__ dtrace_unregister (int ) ;
 scalar_t__ dtrace_vtime_active ;
 scalar_t__ dtrace_vtime_references ;
 int * dtrace_vtime_switch_func ;
 int helper_dev ;
 int kld_load ;
 int kld_unload_try ;
 int kmem_cache_destroy (int ) ;
 int kmem_free (int *,int ) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int taskq_destroy (int ) ;

__attribute__((used)) static int
dtrace_unload()
{
 dtrace_state_t *state;
 int error = 0;

 destroy_dev(dtrace_dev);
 destroy_dev(helper_dev);

 mutex_enter(&dtrace_provider_lock);
 mutex_enter(&dtrace_lock);
 mutex_enter(&cpu_lock);

 ASSERT(dtrace_opens == 0);

 if (dtrace_helpers > 0) {
  mutex_exit(&cpu_lock);
  mutex_exit(&dtrace_lock);
  mutex_exit(&dtrace_provider_lock);
  return (EBUSY);
 }

 if (dtrace_unregister((dtrace_provider_id_t)dtrace_provider) != 0) {
  mutex_exit(&cpu_lock);
  mutex_exit(&dtrace_lock);
  mutex_exit(&dtrace_provider_lock);
  return (EBUSY);
 }

 dtrace_provider = ((void*)0);
 EVENTHANDLER_DEREGISTER(kld_load, dtrace_kld_load_tag);
 EVENTHANDLER_DEREGISTER(kld_unload_try, dtrace_kld_unload_try_tag);

 if ((state = dtrace_anon_grab()) != ((void*)0)) {





  ASSERT(state->dts_necbs == 0);
  dtrace_state_destroy(state);
 }

 bzero(&dtrace_anon, sizeof (dtrace_anon_t));

 mutex_exit(&cpu_lock);

 if (dtrace_probes != ((void*)0)) {
  kmem_free(dtrace_probes, 0);
  dtrace_probes = ((void*)0);
  dtrace_nprobes = 0;
 }

 dtrace_hash_destroy(dtrace_bymod);
 dtrace_hash_destroy(dtrace_byfunc);
 dtrace_hash_destroy(dtrace_byname);
 dtrace_bymod = ((void*)0);
 dtrace_byfunc = ((void*)0);
 dtrace_byname = ((void*)0);

 kmem_cache_destroy(dtrace_state_cache);

 delete_unrhdr(dtrace_arena);

 if (dtrace_toxrange != ((void*)0)) {
  kmem_free(dtrace_toxrange, 0);
  dtrace_toxrange = ((void*)0);
  dtrace_toxranges = 0;
  dtrace_toxranges_max = 0;
 }

 ASSERT(dtrace_vtime_references == 0);
 ASSERT(dtrace_opens == 0);
 ASSERT(dtrace_retained == ((void*)0));

 mutex_exit(&dtrace_lock);
 mutex_exit(&dtrace_provider_lock);

 mutex_destroy(&dtrace_meta_lock);
 mutex_destroy(&dtrace_provider_lock);
 mutex_destroy(&dtrace_lock);




 taskq_destroy(dtrace_taskq);


 dtrace_invop_uninit();





 dtrace_vtime_active = 0;
 dtrace_vtime_switch_func = ((void*)0);


 dtrace_trap_func = ((void*)0);

 return (error);
}
