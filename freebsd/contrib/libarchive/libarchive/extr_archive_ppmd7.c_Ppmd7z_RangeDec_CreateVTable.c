
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int DecodeBit; int Decode; int GetThreshold; } ;
struct TYPE_5__ {TYPE_1__ p; } ;
typedef TYPE_2__ CPpmd7z_RangeDec ;


 int Range_DecodeBit_7z ;
 int Range_Decode_7z ;
 int Range_GetThreshold ;

__attribute__((used)) static void Ppmd7z_RangeDec_CreateVTable(CPpmd7z_RangeDec *p)
{
  p->p.GetThreshold = Range_GetThreshold;
  p->p.Decode = Range_Decode_7z;
  p->p.DecodeBit = Range_DecodeBit_7z;
}
