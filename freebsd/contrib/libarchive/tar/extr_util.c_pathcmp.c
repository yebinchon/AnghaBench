
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
pathcmp(const char *a, const char *b)
{

 if (a[0] == '.' && a[1] == '/' && a[2] != '\0')
  a += 2;
 if (b[0] == '.' && b[1] == '/' && b[2] != '\0')
  b += 2;

 while (*a == *b) {
  if (*a == '\0')
   return (0);
  a++;
  b++;
 }




 if (a[0] == '/' && a[1] == '\0' && b[0] == '\0')
  return (0);
 if (a[0] == '\0' && b[0] == '/' && b[1] == '\0')
  return (0);

 return (*(const unsigned char *)a - *(const unsigned char *)b);
}
