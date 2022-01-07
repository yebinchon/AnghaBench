
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int VIS_CSTYLE ;
 int VIS_DQ ;
 int VIS_GLOB ;
 int VIS_NOSLASH ;
 int VIS_OCTAL ;
 scalar_t__ iscntrl (int) ;
 int isoctal (int) ;
 scalar_t__ isvisible (int,int) ;

char *
vis(char *dst, int c, int flag, int nextc)
{
 if (isvisible(c, flag)) {
  if ((c == '"' && (flag & VIS_DQ) != 0) ||
      (c == '\\' && (flag & VIS_NOSLASH) == 0))
   *dst++ = '\\';
  *dst++ = c;
  *dst = '\0';
  return (dst);
 }

 if (flag & VIS_CSTYLE) {
  switch(c) {
  case '\n':
   *dst++ = '\\';
   *dst++ = 'n';
   goto done;
  case '\r':
   *dst++ = '\\';
   *dst++ = 'r';
   goto done;
  case '\b':
   *dst++ = '\\';
   *dst++ = 'b';
   goto done;
  case '\a':
   *dst++ = '\\';
   *dst++ = 'a';
   goto done;
  case '\v':
   *dst++ = '\\';
   *dst++ = 'v';
   goto done;
  case '\t':
   *dst++ = '\\';
   *dst++ = 't';
   goto done;
  case '\f':
   *dst++ = '\\';
   *dst++ = 'f';
   goto done;
  case ' ':
   *dst++ = '\\';
   *dst++ = 's';
   goto done;
  case '\0':
   *dst++ = '\\';
   *dst++ = '0';
   if (isoctal(nextc)) {
    *dst++ = '0';
    *dst++ = '0';
   }
   goto done;
  }
 }
 if (((c & 0177) == ' ') || (flag & VIS_OCTAL) ||
     ((flag & VIS_GLOB) && (c == '*' || c == '?' || c == '[' || c == '#'))) {
  *dst++ = '\\';
  *dst++ = ((u_char)c >> 6 & 07) + '0';
  *dst++ = ((u_char)c >> 3 & 07) + '0';
  *dst++ = ((u_char)c & 07) + '0';
  goto done;
 }
 if ((flag & VIS_NOSLASH) == 0)
  *dst++ = '\\';
 if (c & 0200) {
  c &= 0177;
  *dst++ = 'M';
 }
 if (iscntrl((u_char)c)) {
  *dst++ = '^';
  if (c == 0177)
   *dst++ = '?';
  else
   *dst++ = c + '@';
 } else {
  *dst++ = '-';
  *dst++ = c;
 }
done:
 *dst = '\0';
 return (dst);
}
