
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ MALLOCSMART_SIZE_TO_SLICE (scalar_t__) ;
 scalar_t__ MALLOCSMART_SLICES ;
 unsigned int MALLOCSMART_SLICE_SIZE ;
 int XX_MallocSmartLock ;
 scalar_t__ XX_MallocSmartMapCheck (unsigned int,scalar_t__) ;
 int XX_MallocSmartMapSet (unsigned int,scalar_t__) ;
 scalar_t__ XX_MallocSmartPool ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void *
XX_MallocSmart(uint32_t size, int memPartitionId, uint32_t alignment)
{
 unsigned int i;
 vm_offset_t addr;

 addr = 0;


 alignment = MALLOCSMART_SIZE_TO_SLICE(alignment);
 size = MALLOCSMART_SIZE_TO_SLICE(size);


 mtx_lock(&XX_MallocSmartLock);


 for (i = 0; i + size <= MALLOCSMART_SLICES; i += alignment) {
  if (XX_MallocSmartMapCheck(i, size)) {
   XX_MallocSmartMapSet(i, size);
   addr = (vm_offset_t)XX_MallocSmartPool +
       (i * MALLOCSMART_SLICE_SIZE);
   break;
  }
 }


 mtx_unlock(&XX_MallocSmartLock);

 return ((void *)addr);
}
