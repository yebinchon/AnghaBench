
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int MA_OWNED ;
 int TRUE ;
 int XX_MallocSmartLock ;
 scalar_t__* XX_MallocSmartMap ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
XX_MallocSmartMapCheck(unsigned int start, unsigned int slices)
{
 unsigned int i;

 mtx_assert(&XX_MallocSmartLock, MA_OWNED);
 for (i = start; i < start + slices; i++)
  if (XX_MallocSmartMap[i])
   return (FALSE);
 return (TRUE);
}
