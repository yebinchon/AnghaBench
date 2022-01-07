
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;



__attribute__((used)) static int
iszero(const u_char *p, size_t l)
{
 while (l--) {
  if (*p++)
   return 0;
 }
 return 1;
}
