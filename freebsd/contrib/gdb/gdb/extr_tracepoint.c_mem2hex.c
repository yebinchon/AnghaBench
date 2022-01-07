
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** hexchars ;

__attribute__((used)) static unsigned char *
mem2hex (unsigned char *mem, unsigned char *buf, int count)
{
  unsigned char ch;

  while (count-- > 0)
    {
      ch = *mem++;

      *buf++ = hexchars[ch >> 4];
      *buf++ = hexchars[ch & 0xf];
    }

  *buf = 0;

  return buf;
}
