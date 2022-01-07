
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int ONEOUT (char) ;

__attribute__((used)) static void
atoascii(
 const char *in,
 size_t in_octets,
 char *out,
 size_t out_octets
 )
{
 const u_char * pchIn;
 const u_char * pchInLimit;
 u_char * pchOut;
 u_char c;

 pchIn = (const u_char *)in;
 pchInLimit = pchIn + in_octets;
 pchOut = (u_char *)out;

 if (((void*)0) == pchIn) {
  if (0 < out_octets)
   *pchOut = '\0';
  return;
 }
 for ( ; pchIn < pchInLimit; pchIn++) {
  c = *pchIn;
  if ('\0' == c)
   break;
  if (c & 0x80) {
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('M'); } while (0);
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('-'); } while (0);
   c &= 0x7f;
  }
  if (c < ' ') {
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('^'); } while (0);
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ((u_char)(c + '@')); } while (0);
  } else if (0x7f == c) {
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('^'); } while (0);
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('?'); } while (0);
  } else
   do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = (c); } while (0);
 }
 do { if (0 == --out_octets) { *pchOut = '\0'; return; } *pchOut++ = ('\0'); } while (0);


}
