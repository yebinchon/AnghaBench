
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;



__attribute__((used)) static void
nextslist(const Char *sl, Char *np)
{
    if (!*sl)
 *np = '\000';
    else if (*sl == ':') {
 *np++ = '.';
 *np = '\000';
    }
    else {
 while (*sl && *sl != ':')
     *np++ = *sl++;
 *np = '\000';
    }
}
