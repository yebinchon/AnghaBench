
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ p ;


 int KASSERT (int,char*) ;
 unsigned int MALLOCSMART_SIZE_TO_SLICE (scalar_t__) ;
 int XX_MallocSmartLock ;
 unsigned int* XX_MallocSmartMap ;
 int XX_MallocSmartMapClear (unsigned int,unsigned int) ;
 scalar_t__ XX_MallocSmartPool ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
XX_FreeSmart(void *p)
{
 unsigned int start, slices;


 start = MALLOCSMART_SIZE_TO_SLICE((vm_offset_t)(p) -
     (vm_offset_t)XX_MallocSmartPool);


 mtx_lock(&XX_MallocSmartLock);

 KASSERT(XX_MallocSmartMap[start] > 0,
     ("XX_FreeSmart: Double or mid-block free!\n"));


 slices = XX_MallocSmartMap[start];
 XX_MallocSmartMapClear(start, slices);


 mtx_unlock(&XX_MallocSmartLock);
}
