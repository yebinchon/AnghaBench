
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Status; } ;
typedef TYPE_1__ t_PXENV_UNLOAD_STACK ;
typedef TYPE_1__ t_PXENV_UNDI_SHUTDOWN ;


 int PXENV_UNDI_SHUTDOWN ;
 int PXENV_UNLOAD_STACK ;
 TYPE_1__* bio_alloc (int) ;
 int bio_free (TYPE_1__*,int) ;
 int bzero (TYPE_1__*,int) ;
 int printf (char*,scalar_t__) ;
 int pxe_call (int ,TYPE_1__*) ;
 scalar_t__ pxe_debug ;

__attribute__((used)) static void
pxe_cleanup(void)
{
 t_PXENV_UNLOAD_STACK *unload_stack_p;
 t_PXENV_UNDI_SHUTDOWN *undi_shutdown_p;

 if (pxe_call == ((void*)0))
  return;

 undi_shutdown_p = bio_alloc(sizeof(*undi_shutdown_p));
 if (undi_shutdown_p != ((void*)0)) {
  bzero(undi_shutdown_p, sizeof(*undi_shutdown_p));
  pxe_call(PXENV_UNDI_SHUTDOWN, undi_shutdown_p);






  bio_free(undi_shutdown_p, sizeof(*undi_shutdown_p));
 }

 unload_stack_p = bio_alloc(sizeof(*unload_stack_p));
 if (unload_stack_p != ((void*)0)) {
  bzero(unload_stack_p, sizeof(*unload_stack_p));
  pxe_call(PXENV_UNLOAD_STACK, unload_stack_p);






  bio_free(unload_stack_p, sizeof(*unload_stack_p));
 }
}
