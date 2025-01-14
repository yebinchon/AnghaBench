
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
decode_utf8(const char *ibuf)
{
 const u_char *buf = (u_char *)ibuf;
 int u = -1;

 if ((buf[0] & 0x80) == 0)
  u = buf[0];
 else if ((buf[0] & 0x40) == 0);
 else {
  if ((buf[0] & 0x20) == 0)
   u = (buf[0] ^ 0xC0) << 6 ^ (buf[1] ^ 0x80);
  else if ((buf[0] & 0x10) == 0)
   u = (buf[0] ^ 0xE0) << 12 ^ (buf[1] ^ 0x80) << 6
     ^ (buf[2] ^ 0x80);
  else if (((buf[0] & 0x08) == 0))
   u = (buf[0] ^ 0xF0) << 18 ^ (buf[1] ^ 0x80) << 12
     ^ (buf[2] ^ 0x80) << 6 ^ (buf[3] ^ 0x80);
 }

 return u;
}
