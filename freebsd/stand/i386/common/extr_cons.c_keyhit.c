
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ OPT_CHECK (int ) ;
 scalar_t__ PTOV (int) ;
 int RBX_NOINTR ;
 unsigned int SECOND ;
 int xgetc (int) ;

int
keyhit(unsigned int secs)
{
 uint32_t t0, t1, c;

 if (OPT_CHECK(RBX_NOINTR))
  return (0);
 secs *= SECOND;
 t0 = 0;
 for (;;) {







  c = xgetc(1);
  if (c != 0 && c != 0x0100)
   return (1);
  if (secs > 0) {
   t1 = *(uint32_t *)PTOV(0x46c);
   if (!t0)
    t0 = t1;
   if (t1 < t0 || t1 >= t0 + secs)
    return (0);
  }
 }

}
