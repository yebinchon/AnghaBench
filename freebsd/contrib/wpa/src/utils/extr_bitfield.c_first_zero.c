
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int first_zero(u8 val)
{
 int i;
 for (i = 0; i < 8; i++) {
  if (!(val & 0x01))
   return i;
  val >>= 1;
 }
 return -1;
}
