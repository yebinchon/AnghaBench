
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ os_get_random (unsigned char*,size_t) ;

int p2p_random(char *buf, size_t len)
{
 u8 val;
 size_t i;
 u8 letters = 'Z' - 'A' + 1;
 u8 numbers = 10;

 if (os_get_random((unsigned char *) buf, len))
  return -1;

 for (i = 0; i < len; i++) {
  val = buf[i];
  val %= 2 * letters + numbers;
  if (val < letters)
   buf[i] = 'A' + val;
  else if (val < 2 * letters)
   buf[i] = 'a' + (val - letters);
  else
   buf[i] = '0' + (val - 2 * letters);
 }

 return 0;
}
