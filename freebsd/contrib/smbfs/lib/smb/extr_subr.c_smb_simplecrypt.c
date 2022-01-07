
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isascii (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 char* malloc (int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char const*) ;

char *
smb_simplecrypt(char *dst, const char *src)
{
 int ch, pos;
 char *dp;

 if (dst == ((void*)0)) {
  dst = malloc(4 + 2 * strlen(src));
  if (dst == ((void*)0))
   return ((void*)0);
 }
 dp = dst;
 *dst++ = '$';
 *dst++ = '$';
 *dst++ = '1';
 pos = 27;
 while (*src) {
  ch = *src++;
  if (isascii(ch))
      ch = (isupper(ch) ? ('A' + (ch - 'A' + 13) % 26) :
     islower(ch) ? ('a' + (ch - 'a' + 13) % 26) : ch);
  ch ^= pos;
  pos += 13;
  if (pos > 256)
   pos -= 256;
  sprintf(dst, "%02x", ch);
  dst += 2;
 }
 *dst = 0;
 return dp;
}
