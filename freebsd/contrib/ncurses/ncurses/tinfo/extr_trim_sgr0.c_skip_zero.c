
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UChar (char) ;
 scalar_t__ isalpha (int ) ;

__attribute__((used)) static char *
skip_zero(char *s)
{
    if (s[0] == '0') {
 if (s[1] == ';')
     s += 2;
 else if (isalpha(UChar(s[1])))
     s += 1;
    }
    return s;
}
