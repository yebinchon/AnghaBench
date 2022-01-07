
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset; } ;


 TYPE_1__* partab ;

__attribute__((used)) static unsigned
pcheck(
 register unsigned char *buf,
 register int idx
 )
{
 register int i,last;
 register unsigned psum = 1;

 last = partab[idx+1].offset;

 for (i = partab[idx].offset; i < last; i++)
     psum ^= (buf[i] != '-');

 return psum;
}
