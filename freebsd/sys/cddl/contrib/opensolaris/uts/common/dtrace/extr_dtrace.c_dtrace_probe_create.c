
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_7__ {int dtpr_id; int dtpr_aframes; int * dtpr_provider; void* dtpr_arg; void* dtpr_name; void* dtpr_func; void* dtpr_mod; scalar_t__ dtpr_gen; } ;
typedef TYPE_1__ dtrace_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int MUTEX_HELD (int *) ;
 int VM_BESTFIT ;
 int VM_SLEEP ;
 int alloc_unr (int ) ;
 int bcopy (TYPE_1__**,TYPE_1__**,size_t) ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int dtrace_hash_add (int ,TYPE_1__*) ;
 int dtrace_lock ;
 int dtrace_membar_producer () ;
 int dtrace_nprobes ;
 int dtrace_probegen ;
 TYPE_1__** dtrace_probes ;
 int * dtrace_provider ;
 void* dtrace_strdup (char const*) ;
 int dtrace_sync () ;
 int kmem_free (TYPE_1__**,size_t) ;
 void* kmem_zalloc (size_t,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ vmem_alloc (int ,int,int) ;

dtrace_id_t
dtrace_probe_create(dtrace_provider_id_t prov, const char *mod,
    const char *func, const char *name, int aframes, void *arg)
{
 dtrace_probe_t *probe, **probes;
 dtrace_provider_t *provider = (dtrace_provider_t *)prov;
 dtrace_id_t id;

 if (provider == dtrace_provider) {
  ASSERT(MUTEX_HELD(&dtrace_lock));
 } else {
  mutex_enter(&dtrace_lock);
 }





 id = alloc_unr(dtrace_arena);

 probe = kmem_zalloc(sizeof (dtrace_probe_t), KM_SLEEP);

 probe->dtpr_id = id;
 probe->dtpr_gen = dtrace_probegen++;
 probe->dtpr_mod = dtrace_strdup(mod);
 probe->dtpr_func = dtrace_strdup(func);
 probe->dtpr_name = dtrace_strdup(name);
 probe->dtpr_arg = arg;
 probe->dtpr_aframes = aframes;
 probe->dtpr_provider = provider;

 dtrace_hash_add(dtrace_bymod, probe);
 dtrace_hash_add(dtrace_byfunc, probe);
 dtrace_hash_add(dtrace_byname, probe);

 if (id - 1 >= dtrace_nprobes) {
  size_t osize = dtrace_nprobes * sizeof (dtrace_probe_t *);
  size_t nsize = osize << 1;

  if (nsize == 0) {
   ASSERT(osize == 0);
   ASSERT(dtrace_probes == ((void*)0));
   nsize = sizeof (dtrace_probe_t *);
  }

  probes = kmem_zalloc(nsize, KM_SLEEP);

  if (dtrace_probes == ((void*)0)) {
   ASSERT(osize == 0);
   dtrace_probes = probes;
   dtrace_nprobes = 1;
  } else {
   dtrace_probe_t **oprobes = dtrace_probes;

   bcopy(oprobes, probes, osize);
   dtrace_membar_producer();
   dtrace_probes = probes;

   dtrace_sync();





   kmem_free(oprobes, osize);
   dtrace_nprobes <<= 1;
  }

  ASSERT(id - 1 < dtrace_nprobes);
 }

 ASSERT(dtrace_probes[id - 1] == ((void*)0));
 dtrace_probes[id - 1] = probe;

 if (provider != dtrace_provider)
  mutex_exit(&dtrace_lock);

 return (id);
}
