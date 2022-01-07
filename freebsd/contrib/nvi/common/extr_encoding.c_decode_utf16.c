
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
decode_utf16(const char* ibuf, int bigend)
{
 const u_char *buf = (u_char *)ibuf;
 int u = -1;
 unsigned int w1, w2;

 if (bigend)
  w1 = buf[0] << 8 ^ buf[1];
 else
  w1 = buf[0] ^ buf[1] << 8;

 if (w1 < 0xD800 || w1 > 0xDFFF)
  u = w1;
 else if (w1 > 0xDBFF);
 else {
  if (bigend)
   w2 = buf[2] << 8 ^ buf[3];
  else
   w2 = buf[2] ^ buf[3] << 8;
  u = ((w1 ^ 0xD800) << 10 ^ (w2 ^ 0xDC00)) + 0x10000;
 }

 return u;
}
