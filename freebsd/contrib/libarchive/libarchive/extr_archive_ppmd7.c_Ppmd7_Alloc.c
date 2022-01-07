
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_4__ {scalar_t__ Base; scalar_t__ Size; scalar_t__ AlignOffset; } ;
typedef TYPE_1__ CPpmd7 ;
typedef int Byte ;
typedef int Bool ;


 int False ;
 int Ppmd7_Free (TYPE_1__*) ;
 int True ;
 scalar_t__ UNIT_SIZE ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static Bool Ppmd7_Alloc(CPpmd7 *p, UInt32 size)
{
  if (p->Base == 0 || p->Size != size)
  {


    if (size < UNIT_SIZE) {
      return False;
    }
    Ppmd7_Free(p);
    p->AlignOffset =



        4 - (size & 3);

    if ((p->Base = (Byte *)malloc(p->AlignOffset + size

        + UNIT_SIZE

        )) == 0)
      return False;
    p->Size = size;
  }
  return True;
}
