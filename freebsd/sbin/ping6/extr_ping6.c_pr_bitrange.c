
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int printf (char*,int) ;

__attribute__((used)) static int
pr_bitrange(u_int32_t v, int soff, int ii)
{
 int off;
 int i;

 off = 0;
 while (off < 32) {

  if ((v & 0x01) == 0) {
   if (ii > 1)
    printf("-%u", soff + off - 1);
   ii = 0;
   switch (v & 0x0f) {
   case 0x00:
    v >>= 4;
    off += 4;
    continue;
   case 0x08:
    v >>= 3;
    off += 3;
    continue;
   case 0x04: case 0x0c:
    v >>= 2;
    off += 2;
    continue;
   default:
    v >>= 1;
    off += 1;
    continue;
   }
  }


  for (i = 0; i < 32 - off; i++) {
   if ((v & (0x01 << i)) == 0)
    break;
  }
  if (!ii)
   printf(" %u", soff + off);
  ii += i;
  v >>= i; off += i;
 }
 return ii;
}
