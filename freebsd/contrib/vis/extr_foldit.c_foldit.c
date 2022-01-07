
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIS_MIMESTYLE ;
 int printf (char*) ;

int
foldit(const char *chunk, int col, int max, int flags)
{
 const char *cp;





again:
 cp = chunk;
 while (*cp) {
  switch(*cp) {
  case '\n':
  case '\r':
   col = 0;
   break;
  case '\t':
   col = (col + 8) &~ 07;
   break;
  case '\b':
   col = col ? col - 1 : 0;
   break;
  default:
   col++;
  }
  if (col > (max - 2)) {
   printf(flags & VIS_MIMESTYLE ? "=\n" : "\\\n");
   col = 0;
   goto again;
  }
  cp++;
 }
 return (col);
}
