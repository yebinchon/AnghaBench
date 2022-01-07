
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char) ;
 scalar_t__ isdigit (int ) ;

__attribute__((used)) static char *
skip_delay(char *s)
{
    while (*s == '/' || isdigit(UChar(*s)))
 ++s;
    return s;
}
