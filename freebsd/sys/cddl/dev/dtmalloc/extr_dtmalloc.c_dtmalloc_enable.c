
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dtrace_id_t ;


 int dtrace_malloc_enabled ;
 int dtrace_malloc_enabled_count ;

__attribute__((used)) static void
dtmalloc_enable(void *arg, dtrace_id_t id, void *parg)
{
 uint32_t *p = parg;
 *p = id;
 dtrace_malloc_enabled_count++;
 if (dtrace_malloc_enabled_count == 1)
  dtrace_malloc_enabled = 1;
}
