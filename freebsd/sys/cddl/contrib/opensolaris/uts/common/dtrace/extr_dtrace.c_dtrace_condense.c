
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void (* dtps_enable ) (void*,dtrace_id_t,void*) ;int (* dtps_destroy ) (int ,int,int ) ;} ;
struct TYPE_9__ {int dtpv_arg; TYPE_1__ dtpv_pops; } ;
typedef TYPE_2__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_10__ {struct TYPE_10__* dtpr_name; struct TYPE_10__* dtpr_func; struct TYPE_10__* dtpr_mod; int dtpr_arg; int * dtpr_ecb; TYPE_2__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;


 int ASSERT (int) ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int dtrace_hash_remove (int ,TYPE_3__*) ;
 int dtrace_lock ;
 int dtrace_nprobes ;
 scalar_t__ dtrace_nullop ;
 TYPE_3__** dtrace_probes ;
 int dtrace_provider_lock ;
 int free_unr (int ,int) ;
 int kmem_free (TYPE_3__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int strlen (TYPE_3__*) ;
 int stub1 (int ,int,int ) ;
 int vmem_free (int ,void*,int) ;

int
dtrace_condense(dtrace_provider_id_t id)
{
 dtrace_provider_t *prov = (dtrace_provider_t *)id;
 int i;
 dtrace_probe_t *probe;




 ASSERT(prov->dtpv_pops.dtps_enable !=
     (void (*)(void *, dtrace_id_t, void *))dtrace_nullop);

 mutex_enter(&dtrace_provider_lock);
 mutex_enter(&dtrace_lock);




 for (i = 0; i < dtrace_nprobes; i++) {
  if ((probe = dtrace_probes[i]) == ((void*)0))
   continue;

  if (probe->dtpr_provider != prov)
   continue;

  if (probe->dtpr_ecb != ((void*)0))
   continue;

  dtrace_probes[i] = ((void*)0);

  dtrace_hash_remove(dtrace_bymod, probe);
  dtrace_hash_remove(dtrace_byfunc, probe);
  dtrace_hash_remove(dtrace_byname, probe);

  prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, i + 1,
      probe->dtpr_arg);
  kmem_free(probe->dtpr_mod, strlen(probe->dtpr_mod) + 1);
  kmem_free(probe->dtpr_func, strlen(probe->dtpr_func) + 1);
  kmem_free(probe->dtpr_name, strlen(probe->dtpr_name) + 1);
  kmem_free(probe, sizeof (dtrace_probe_t));



  free_unr(dtrace_arena, i + 1);

 }

 mutex_exit(&dtrace_lock);
 mutex_exit(&dtrace_provider_lock);

 return (0);
}
