
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int * strchr (char const*,char const) ;

__attribute__((used)) static ssize_t
xo_strnspn (const char *str, size_t len, const char *accept)
{
    ssize_t i;
    const char *cp, *ep;

    for (i = 0, cp = str, ep = str + len; cp < ep && *cp != '\0'; i++, cp++) {
 if (strchr(accept, *cp) == ((void*)0))
     break;
    }

    return i;
}
