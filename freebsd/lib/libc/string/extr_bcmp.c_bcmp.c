
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
bcmp(const void *b1, const void *b2, size_t length)
{
 char *p1, *p2;

 if (length == 0)
  return (0);
 p1 = (char *)b1;
 p2 = (char *)b2;
 do
  if (*p1++ != *p2++)
   break;
 while (--length);
 return (length);
}
