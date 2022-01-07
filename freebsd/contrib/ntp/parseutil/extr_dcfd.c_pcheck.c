
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* zerobits; } ;
struct TYPE_3__ {int offset; } ;


 TYPE_2__ dcfparam ;
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
     psum ^= (buf[i] != dcfparam.zerobits[i]);

 return psum;
}
