
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * to_sections_end; int * to_sections; } ;


 int CLEAR_SOLIB () ;
 int inferior_ptid ;
 TYPE_1__ kgdb_trgt_ops ;
 int * kvm ;
 scalar_t__ kvm_close (int *) ;
 int kvm_geterr (int *) ;
 int null_ptid ;
 int * vmcore ;
 int warning (char*,int *,int ) ;
 int xfree (int *) ;

__attribute__((used)) static void
kgdb_trgt_close(int quitting)
{

 if (kvm != ((void*)0)) {
  inferior_ptid = null_ptid;
  CLEAR_SOLIB();
  if (kvm_close(kvm) != 0)
   warning("cannot close \"%s\": %s", vmcore,
       kvm_geterr(kvm));
  kvm = ((void*)0);
  xfree(vmcore);
  vmcore = ((void*)0);
  if (kgdb_trgt_ops.to_sections) {
   xfree(kgdb_trgt_ops.to_sections);
   kgdb_trgt_ops.to_sections = ((void*)0);
   kgdb_trgt_ops.to_sections_end = ((void*)0);
  }
 }
}
