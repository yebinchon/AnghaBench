
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int isascii (int) ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 int isxdigit (int) ;

int
uni_str2nsap(u_char *out, const char *in)
{
 int i;
 int c;

 for(i = 0; i < 20; i++) {
  while((c = *in++) == '.')
   ;
  if(!isascii(c) || !isxdigit(c))
   return -1;
  out[i] = isdigit(c) ? (c - '0')
   : islower(c) ? (c - 'a' + 10)
   : (c - 'A' + 10);
  out[i] <<= 4;
  c = *in++;
  if(!isascii(c) || !isxdigit(c))
   return -1;
  out[i] |= isdigit(c) ? (c - '0')
   : islower(c) ? (c - 'a' + 10)
   : (c - 'A' + 10);
 }
 return *in != '\0';
}
