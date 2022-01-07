
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reverse (char*,char*) ;

__attribute__((used)) static int
uitoa(unsigned n, char* s)
{
    char* ss = s;
    do {
        *ss++ = '0' + n % 10;
    } while (n /= 10);
    reverse(s, ss);
    return ss - s;
}
