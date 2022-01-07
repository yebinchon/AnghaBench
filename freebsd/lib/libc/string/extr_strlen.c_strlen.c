
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t LONGPTR_MASK ;
 unsigned long const mask01 ;
 unsigned long const mask80 ;
 int testbyte (int) ;

size_t
strlen(const char *str)
{
 const char *p;
 const unsigned long *lp;
 long va, vb;
 lp = (const unsigned long *)((uintptr_t)str & ~LONGPTR_MASK);
 va = (*lp - mask01);
 vb = ((~*lp) & mask80);
 lp++;
 if (va & vb)

  for (p = str; p < (const char *)lp; p++)
   if (*p == '\0')
    return (p - str);


 for (; ; lp++) {
  va = (*lp - mask01);
  vb = ((~*lp) & mask80);
  if (va & vb) {
   p = (const char *)(lp);
   testbyte(0);
   testbyte(1);
   testbyte(2);
   testbyte(3);






  }
 }


 return (0);
}
