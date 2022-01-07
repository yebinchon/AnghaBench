
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int deactivate_uw_thread () ;
 int libthread_init () ;
 int target_new_objfile_chain (struct objfile*) ;
 scalar_t__ uw_thread_active ;

__attribute__((used)) static void
uw_thread_new_objfile (struct objfile *objfile)
{
  if (objfile)
    libthread_init ();

  else if (uw_thread_active)
    deactivate_uw_thread ();

  if (target_new_objfile_chain)
    target_new_objfile_chain (objfile);
}
