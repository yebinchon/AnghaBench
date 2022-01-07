
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOWERCASE (char const) ;

__attribute__((used)) static int
CaselessCmp(const char *a, const char *b)
{
    while (*a && *b) {
 int cmp = LOWERCASE(*a) - LOWERCASE(*b);
 if (cmp != 0)
     break;
 a++, b++;
    }
    return LOWERCASE(*a) - LOWERCASE(*b);
}
