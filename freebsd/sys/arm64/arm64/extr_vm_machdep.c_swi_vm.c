
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int busdma_swi () ;
 scalar_t__ busdma_swi_pending ;

void
swi_vm(void *v)
{

 if (busdma_swi_pending != 0)
  busdma_swi();
}
