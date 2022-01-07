
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add (unsigned int*,unsigned int*,unsigned int*) ;
 int mult (unsigned int*,unsigned int*,unsigned int*) ;
 int mult121665 (unsigned int*,unsigned int*) ;
 int select (unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int) ;
 int square (unsigned int*,unsigned int*) ;
 int sub (unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void mainloop(unsigned int work[64],const unsigned char e[32])
{
  unsigned int xzm1[64];
  unsigned int xzm[64];
  unsigned int xzmb[64];
  unsigned int xzm1b[64];
  unsigned int xznb[64];
  unsigned int xzn1b[64];
  unsigned int a0[64];
  unsigned int a1[64];
  unsigned int b0[64];
  unsigned int b1[64];
  unsigned int c1[64];
  unsigned int r[32];
  unsigned int s[32];
  unsigned int t[32];
  unsigned int u[32];
  unsigned int j;
  unsigned int b;
  int pos;

  for (j = 0;j < 32;++j) xzm1[j] = work[j];
  xzm1[32] = 1;
  for (j = 33;j < 64;++j) xzm1[j] = 0;

  xzm[0] = 1;
  for (j = 1;j < 64;++j) xzm[j] = 0;

  for (pos = 254;pos >= 0;--pos) {
    b = e[pos / 8] >> (pos & 7);
    b &= 1;
    select(xzmb,xzm1b,xzm,xzm1,b);
    add(a0,xzmb,xzmb + 32);
    sub(a0 + 32,xzmb,xzmb + 32);
    add(a1,xzm1b,xzm1b + 32);
    sub(a1 + 32,xzm1b,xzm1b + 32);
    square(b0,a0);
    square(b0 + 32,a0 + 32);
    mult(b1,a1,a0 + 32);
    mult(b1 + 32,a1 + 32,a0);
    add(c1,b1,b1 + 32);
    sub(c1 + 32,b1,b1 + 32);
    square(r,c1 + 32);
    sub(s,b0,b0 + 32);
    mult121665(t,s);
    add(u,t,b0);
    mult(xznb,b0,b0 + 32);
    mult(xznb + 32,s,u);
    square(xzn1b,c1);
    mult(xzn1b + 32,r,work);
    select(xzm,xzm1,xznb,xzn1b,b);
  }

  for (j = 0;j < 64;++j) work[j] = xzm[j];
}
