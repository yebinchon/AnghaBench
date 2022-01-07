
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_OWNED ;
 int XX_MallocSmartLock ;
 unsigned int* XX_MallocSmartMap ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
XX_MallocSmartMapSet(unsigned int start, unsigned int slices)
{
 unsigned int i;

 mtx_assert(&XX_MallocSmartLock, MA_OWNED);

 for (i = start; i < start + slices; i++)
  XX_MallocSmartMap[i] = ((i == start) ? slices : -1);
}
