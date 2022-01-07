
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;



__attribute__((used)) static int
matchs(const Char *str, const Char *pat)
{
    while (*str && *pat && *str == *pat)
 str++, pat++;
    return (*pat == 0);
}
