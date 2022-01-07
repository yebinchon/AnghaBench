
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char const) ;
 scalar_t__ isdigit (int ) ;

__attribute__((used)) static const char *
skip_delay(const char *s)
{
    if (s[0] == '$' && s[1] == '<') {
 s += 2;
 while (isdigit(UChar(*s)) || *s == '/')
     ++s;
 if (*s == '>')
     ++s;
    }
    return s;
}
