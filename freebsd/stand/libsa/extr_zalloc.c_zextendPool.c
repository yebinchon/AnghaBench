
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {uintptr_t mp_Size; void* mp_Base; uintptr_t mp_Used; char* mp_End; } ;
typedef TYPE_1__ MemPool ;



void
zextendPool(MemPool *mp, void *base, uintptr_t bytes)
{
 if (mp->mp_Size == 0) {
  mp->mp_Base = base;
  mp->mp_Used = bytes;
  mp->mp_End = (char *)base + bytes;
  mp->mp_Size = bytes;
 } else {
  void *pend = (char *)mp->mp_Base + mp->mp_Size;

  if (base < mp->mp_Base) {
   mp->mp_Size += (char *)mp->mp_Base - (char *)base;
   mp->mp_Used += (char *)mp->mp_Base - (char *)base;
   mp->mp_Base = base;
  }
  base = (char *)base + bytes;
  if (base > pend) {
   mp->mp_Size += (char *)base - (char *)pend;
   mp->mp_Used += (char *)base - (char *)pend;
   mp->mp_End = (char *)base;
  }
 }
}
