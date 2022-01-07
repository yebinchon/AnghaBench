
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* hexchar ;
 char toupper (unsigned char) ;

__attribute__((used)) static int
pos(char c)
{
    const char *p;
    c = toupper((unsigned char)c);
    for (p = hexchar; *p; p++)
 if (*p == c)
     return p - hexchar;
    return -1;
}
