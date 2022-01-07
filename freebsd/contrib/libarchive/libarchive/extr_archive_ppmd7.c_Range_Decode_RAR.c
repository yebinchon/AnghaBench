
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_3__ {int Low; int Range; } ;
typedef TYPE_1__ CPpmd7z_RangeDec ;


 int Range_Normalize (TYPE_1__*) ;

__attribute__((used)) static void Range_Decode_RAR(void *pp, UInt32 start, UInt32 size)
{
  CPpmd7z_RangeDec *p = (CPpmd7z_RangeDec *)pp;
  p->Low += start * p->Range;
  p->Range *= size;
  Range_Normalize(p);
}
