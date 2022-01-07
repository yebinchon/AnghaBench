
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static char *
strnrcpy(char *ptr, char *str, size_t siz)
{
    int len = strlen(str);
    if (siz == 0)
 return ptr;

    while (len && siz--)
 *--ptr = str[--len];

    return (ptr);
}
