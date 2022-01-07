
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int dtrace_lock ;
 int dtrace_nprobes ;
 int ** dtrace_probes ;

__attribute__((used)) static dtrace_probe_t *
dtrace_probe_lookup_id(dtrace_id_t id)
{
 ASSERT(MUTEX_HELD(&dtrace_lock));

 if (id == 0 || id > dtrace_nprobes)
  return (((void*)0));

 return (dtrace_probes[id - 1]);
}
