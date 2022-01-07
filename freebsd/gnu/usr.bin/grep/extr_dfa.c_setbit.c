
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* charclass ;


 unsigned int INTBITS ;

__attribute__((used)) static void
setbit (unsigned b, charclass c)
{
  c[b / INTBITS] |= 1 << b % INTBITS;
}
