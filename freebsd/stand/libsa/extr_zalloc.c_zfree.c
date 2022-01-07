
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_5__ {uintptr_t mr_Bytes; struct TYPE_5__* mr_Next; } ;
struct TYPE_4__ {uintptr_t mp_Used; TYPE_2__* mp_First; scalar_t__ mp_End; scalar_t__ mp_Base; } ;
typedef TYPE_1__ MemPool ;
typedef TYPE_2__ MemNode ;


 uintptr_t MEMNODE_SIZE_MASK ;
 int panic (char*,void*,int ) ;

void
zfree(MemPool *mp, void *ptr, uintptr_t bytes)
{
 MemNode **pmn;
 MemNode *mn;





 bytes = (bytes + MEMNODE_SIZE_MASK) & ~MEMNODE_SIZE_MASK;

 if (bytes == 0)
  return;





 if ((char *)ptr < (char *)mp->mp_Base ||
     (char *)ptr + bytes > (char *)mp->mp_End ||
     ((uintptr_t)ptr & MEMNODE_SIZE_MASK) != 0)
  panic("zfree(%p,%ju): wild pointer", ptr, (uintmax_t)bytes);




 mp->mp_Used -= bytes;

 for (pmn = &mp->mp_First; (mn = *pmn) != ((void*)0); pmn = &mn->mr_Next) {






  if ((char *)ptr <= (char *)mn) {



   if ((char *)ptr + bytes > (char *)mn) {
    panic("zfree(%p,%ju): corrupt memlist1", ptr,
        (uintmax_t)bytes);
   }





   if ((char *)ptr + bytes == (char *)mn) {
    ((MemNode *)ptr)->mr_Next = mn->mr_Next;
    ((MemNode *)ptr)->mr_Bytes =
        bytes + mn->mr_Bytes;
   } else {
    ((MemNode *)ptr)->mr_Next = mn;
    ((MemNode *)ptr)->mr_Bytes = bytes;
   }
   *pmn = mn = (MemNode *)ptr;






   if (pmn != &mp->mp_First) {
    if ((char *)pmn + ((MemNode*)pmn)->mr_Bytes ==
        (char *)ptr) {
     ((MemNode *)pmn)->mr_Next = mn->mr_Next;
     ((MemNode *)pmn)->mr_Bytes +=
         mn->mr_Bytes;
     mn = (MemNode *)pmn;
    }
   }
   return;
  }
  if ((char *)ptr < (char *)mn + mn->mr_Bytes) {
   panic("zfree(%p,%ju): corrupt memlist2", ptr,
       (uintmax_t)bytes);
  }
 }




 if (pmn == &mp->mp_First ||
     (char *)pmn + ((MemNode *)pmn)->mr_Bytes != (char *)ptr) {
  ((MemNode *)ptr)->mr_Next = ((void*)0);
  ((MemNode *)ptr)->mr_Bytes = bytes;
  *pmn = (MemNode *)ptr;
  mn = (MemNode *)ptr;
 } else {
  ((MemNode *)pmn)->mr_Bytes += bytes;
  mn = (MemNode *)pmn;
 }
}
