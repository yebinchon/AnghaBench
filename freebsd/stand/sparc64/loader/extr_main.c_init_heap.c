
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int HEAPSZ ;
 scalar_t__ HEAPVA ;
 scalar_t__ OF_claim (void*,int ,int) ;
 scalar_t__ heapva ;

__attribute__((used)) static vm_offset_t
init_heap(void)
{


 heapva = (vm_offset_t)OF_claim((void *)HEAPVA, HEAPSZ, 32);
 return (heapva);
}
