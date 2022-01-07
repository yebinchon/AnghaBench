
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isprint (char) ;

__attribute__((used)) static int
fdt_isprint(const void *data, int len, int *count)
{
 const char *d;
 char ch;
 int yesno, i;

 if (len == 0)
  return (0);

 d = (const char *)data;
 if (d[len - 1] != '\0')
  return (0);

 *count = 0;
 yesno = 1;
 for (i = 0; i < len; i++) {
  ch = *(d + i);
  if (isprint(ch) || (ch == '\0' && i > 0)) {

   if (ch == '\0')
    (*count)++;
   continue;
  }

  yesno = 0;
  break;
 }

 return (yesno);
}
