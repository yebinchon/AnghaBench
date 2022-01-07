
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufinit () ;
 int identify_cpu () ;
 int install_cpu_errata () ;
 int kmi ;
 int undef_init () ;
 int vm_ksubmap_init (int *) ;
 int vm_pager_bufferinit () ;

__attribute__((used)) static void
cpu_startup(void *dummy)
{

 undef_init();
 identify_cpu();
 install_cpu_errata();

 vm_ksubmap_init(&kmi);
 bufinit();
 vm_pager_bufferinit();
}
