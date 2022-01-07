
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;


 TYPE_1__* rawdcfcode ;

__attribute__((used)) static unsigned long
ext_bf(
 register unsigned char *buf,
 register int idx
 )
{
 register unsigned long sum = 0;
 register int i, first;

 first = rawdcfcode[idx].offset;

 for (i = rawdcfcode[idx+1].offset - 1; i >= first; i--)
 {
  sum <<= 1;
  sum |= (buf[i] != '-');
 }
 return sum;
}
