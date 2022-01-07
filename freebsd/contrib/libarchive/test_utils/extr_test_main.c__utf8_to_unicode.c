
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int
_utf8_to_unicode(uint32_t *pwc, const char *s, size_t n)
{
 static const char utf8_count[256] = {
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
   2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
   3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
   4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
 };
 int ch;
 int cnt;
 uint32_t wc;

 *pwc = 0;


 if (n == 0)
  return (0);



 ch = (unsigned char)*s;
 if (ch == 0)
  return (0);
 cnt = utf8_count[ch];


 if (n < (size_t)cnt)
  return (-1);


 switch (cnt) {
 case 1:
  *pwc = ch & 0x7f;
  return (cnt);
 case 2:
  if ((s[1] & 0xc0) != 0x80) return (-1);
  *pwc = ((ch & 0x1f) << 6) | (s[1] & 0x3f);
  return (cnt);
 case 3:
  if ((s[1] & 0xc0) != 0x80) return (-1);
  if ((s[2] & 0xc0) != 0x80) return (-1);
  wc = ((ch & 0x0f) << 12)
      | ((s[1] & 0x3f) << 6)
      | (s[2] & 0x3f);
  if (wc < 0x800)
   return (-1);
  break;
 case 4:
  if (n < 4)
   return (-1);
  if ((s[1] & 0xc0) != 0x80) return (-1);
  if ((s[2] & 0xc0) != 0x80) return (-1);
  if ((s[3] & 0xc0) != 0x80) return (-1);
  wc = ((ch & 0x07) << 18)
      | ((s[1] & 0x3f) << 12)
      | ((s[2] & 0x3f) << 6)
      | (s[3] & 0x3f);
  if (wc < 0x10000)
   return (-1);
  break;
 default:
  return (-1);
 }



 if (wc > 0x10FFFF)
  return (-1);

 *pwc = wc;
 return (cnt);
}
