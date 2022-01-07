
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CHAR16 ;



int
wcscmp(CHAR16 *a, CHAR16 *b)
{

 while (*a && *b && *a == *b) {
  a++;
  b++;
 }
 return *a - *b;
}
