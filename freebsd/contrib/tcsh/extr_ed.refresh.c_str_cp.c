
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;



__attribute__((used)) static void
str_cp(Char *a, Char *b, int n)
{
    while (n-- && *b)
 *a++ = *b++;
}
