
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_actions_list (void*) ;

__attribute__((used)) static void
free_actions_list_cleanup_wrapper (void *al)
{
  free_actions_list (al);
}
