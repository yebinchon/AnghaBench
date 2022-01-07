
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



int
nb_encname_len(const char *str)
{
 const u_char *cp = (const u_char *)str;
 int len, blen;

 if ((cp[0] & 0xc0) == 0xc0)
  return -1;

 len = 1;
 for (;;) {
  blen = *cp;
  if (blen++ == 0)
   break;
  len += blen;
  cp += blen;
 }
 return len;
}
