
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_5__ {int (* Write ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {int Low; int Cache; scalar_t__ CacheSize; TYPE_2__* Stream; } ;
typedef TYPE_1__ CPpmd7z_RangeEnc ;
typedef int Byte ;


 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static void RangeEnc_ShiftLow(CPpmd7z_RangeEnc *p)
{
  if ((UInt32)p->Low < (UInt32)0xFF000000 || (unsigned)(p->Low >> 32) != 0)
  {
    Byte temp = p->Cache;
    do
    {
      p->Stream->Write(p->Stream, (Byte)(temp + (Byte)(p->Low >> 32)));
      temp = 0xFF;
    }
    while(--p->CacheSize != 0);
    p->Cache = (Byte)((UInt32)p->Low >> 24);
  }
  p->CacheSize++;
  p->Low = ((UInt32)p->Low << 8) & 0xFFFFFFFF;
}
