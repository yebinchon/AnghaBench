
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
split_lines(char *p, const char *plim)
{
 int i;

 i = 0;
 while (p < plim) {
  if (*p == '\n') {
   *p = '\0';
   i++;
  }
  p++;
 }
 return (i);
}
