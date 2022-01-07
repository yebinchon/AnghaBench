
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtx_destroy (int *) ;
 int x86bios_lock ;
 int x86bios_unmap_mem () ;

__attribute__((used)) static int
x86bios_uninit(void)
{

 x86bios_unmap_mem();
 mtx_destroy(&x86bios_lock);

 return (0);
}
