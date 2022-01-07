
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Bottom; } ;
typedef TYPE_1__ CPpmd7z_RangeDec ;
typedef int Bool ;


 int False ;
 int Ppmd_RangeDec_Init (TYPE_1__*) ;
 int True ;

__attribute__((used)) static Bool PpmdRAR_RangeDec_Init(CPpmd7z_RangeDec *p)
{
  if (!Ppmd_RangeDec_Init(p))
    return False;
  p->Bottom = 0x8000;
  return True;
}
