
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;



__attribute__((used)) static int
strtail(Char *cp, const char *str)
{
    while (*cp && *cp == (Char)*str)
 cp++, str++;
    return (*cp != '\0');
}
