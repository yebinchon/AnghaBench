
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probedesc_t ;


 int dtmalloc_type_cb ;
 int malloc_type_list (int ,int *) ;

__attribute__((used)) static void
dtmalloc_provide(void *arg, dtrace_probedesc_t *desc)
{
 if (desc != ((void*)0))
  return;

 malloc_type_list(dtmalloc_type_cb, desc);
}
