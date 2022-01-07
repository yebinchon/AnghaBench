
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;



int
any(const char *s, Char c)
{
    if (!s)
 return (0);
    while (*s)
 if ((Char)*s++ == c)
     return (1);
    return (0);
}
