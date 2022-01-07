
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dtm_count; struct TYPE_5__* dtm_name; } ;
typedef TYPE_1__ dtrace_meta_t ;
typedef scalar_t__ dtrace_meta_provider_id_t ;


 int EBUSY ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 TYPE_1__* dtrace_meta_pid ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int panic (char*,void*) ;
 int strlen (TYPE_1__*) ;

int
dtrace_meta_unregister(dtrace_meta_provider_id_t id)
{
 dtrace_meta_t **pp, *old = (dtrace_meta_t *)id;

 mutex_enter(&dtrace_meta_lock);
 mutex_enter(&dtrace_lock);

 if (old == dtrace_meta_pid) {
  pp = &dtrace_meta_pid;
 } else {
  panic("attempt to unregister non-existent "
      "dtrace meta-provider %p\n", (void *)old);
 }

 if (old->dtm_count != 0) {
  mutex_exit(&dtrace_lock);
  mutex_exit(&dtrace_meta_lock);
  return (EBUSY);
 }

 *pp = ((void*)0);

 mutex_exit(&dtrace_lock);
 mutex_exit(&dtrace_meta_lock);

 kmem_free(old->dtm_name, strlen(old->dtm_name) + 1);
 kmem_free(old, sizeof (dtrace_meta_t));

 return (0);
}
