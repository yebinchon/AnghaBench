
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* _ (int ) ;
 int error (int ,int ,char*,char*) ;
 int exit (int ) ;
 int stub1 () ;
 int xalloc_exit_failure ;
 int xalloc_fail_func () ;
 int xalloc_msg_memory_exhausted ;

void
xalloc_die (void)
{
  if (xalloc_fail_func)
    (*xalloc_fail_func) ();
  error (xalloc_exit_failure, 0, "%s", _(xalloc_msg_memory_exhausted));



  exit (EXIT_FAILURE);
}
