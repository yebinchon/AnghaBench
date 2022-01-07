
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UChar (char const) ;

__attribute__((used)) static unsigned long
string_sum(const char *value)
{
    unsigned long result = 0;

    if ((intptr_t) value == (intptr_t) (-1)) {
 result = ~result;
    } else if (value) {
 while (*value) {
     result += UChar(*value);
     ++value;
 }
    }
    return result;
}
