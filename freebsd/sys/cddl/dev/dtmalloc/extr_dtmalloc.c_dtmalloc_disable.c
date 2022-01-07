
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int dtrace_id_t ;


 int dtrace_malloc_enabled ;
 scalar_t__ dtrace_malloc_enabled_count ;

__attribute__((used)) static void
dtmalloc_disable(void *arg, dtrace_id_t id, void *parg)
{
 uint32_t *p = parg;
 *p = 0;
 dtrace_malloc_enabled_count--;
 if (dtrace_malloc_enabled_count == 0)
  dtrace_malloc_enabled = 0;
}
