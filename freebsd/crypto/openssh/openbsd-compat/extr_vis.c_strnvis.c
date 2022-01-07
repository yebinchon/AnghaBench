
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIS_DQ ;
 int VIS_NOSLASH ;
 scalar_t__ isvisible (int,int) ;
 int memcpy (char*,char*,int) ;
 char* vis (char*,int,int,char const) ;

int
strnvis(char *dst, const char *src, size_t siz, int flag)
{
 char *start, *end;
 char tbuf[5];
 int c, i;

 i = 0;
 for (start = dst, end = start + siz - 1; (c = *src) && dst < end; ) {
  if (isvisible(c, flag)) {
   if ((c == '"' && (flag & VIS_DQ) != 0) ||
       (c == '\\' && (flag & VIS_NOSLASH) == 0)) {

    if (dst + 1 >= end) {
     i = 2;
     break;
    }
    *dst++ = '\\';
   }
   i = 1;
   *dst++ = c;
   src++;
  } else {
   i = vis(tbuf, c, flag, *++src) - tbuf;
   if (dst + i <= end) {
    memcpy(dst, tbuf, i);
    dst += i;
   } else {
    src--;
    break;
   }
  }
 }
 if (siz > 0)
  *dst = '\0';
 if (dst + i > end) {

  while ((c = *src))
   dst += vis(tbuf, c, flag, *++src) - tbuf;
 }
 return (dst - start);
}
