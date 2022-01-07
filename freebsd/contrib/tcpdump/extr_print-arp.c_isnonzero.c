
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;



__attribute__((used)) static int
isnonzero(const u_char *a, size_t len)
{
 while (len > 0) {
  if (*a != 0)
   return (1);
  a++;
  len--;
 }
 return (0);
}
