
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 scalar_t__ OPT_CHECK (int ) ;
 scalar_t__ PTOV (int) ;
 int RBX_NOINTR ;
 scalar_t__ xgetc (int) ;

__attribute__((used)) static int
keyhit(unsigned ticks)
{
 uint32_t t0, t1;

 if (OPT_CHECK(RBX_NOINTR))
  return (0);
 t0 = 0;
 for (;;) {
  if (xgetc(1))
   return (1);
  t1 = *(uint32_t *)PTOV(0x46c);
  if (!t0)
   t0 = t1;
  if ((uint32_t)(t1 - t0) >= ticks)
   return (0);
 }
}
