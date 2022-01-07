
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_actions (void*) ;

__attribute__((used)) static void
do_free_actions_cleanup (void *t)
{
  free_actions (t);
}
