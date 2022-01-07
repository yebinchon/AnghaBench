
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char *
skip_next(char *p)
{
    while(*p && !isspace((unsigned char)*p))
 p++;
    *p++ = 0;
    while(*p && isspace((unsigned char)*p))
 p++;
    return p;
}
