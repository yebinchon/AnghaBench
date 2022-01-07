
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_4__ {scalar_t__ Base; int Size; int AlignOffset; } ;
typedef TYPE_1__ CPpmd8 ;
typedef int Byte ;
typedef int Bool ;


 int False ;
 int Ppmd8_Free (TYPE_1__*) ;
 int True ;
 scalar_t__ malloc (int) ;

Bool Ppmd8_Alloc(CPpmd8 *p, UInt32 size)
{
  if (p->Base == 0 || p->Size != size)
  {
    Ppmd8_Free(p);
    p->AlignOffset =



        4 - (size & 3);

    if ((p->Base = (Byte *)malloc(p->AlignOffset + size)) == 0)
      return False;
    p->Size = size;
  }
  return True;
}
