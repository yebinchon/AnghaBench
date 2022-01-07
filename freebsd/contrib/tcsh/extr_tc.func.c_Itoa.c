
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;
typedef char Char ;


 int CHAR_BIT ;
 char* xmalloc (int) ;

Char *
Itoa(int n, size_t min_digits, Char attributes)
{
    Char buf[8 * sizeof(int) / 3 + 1], *res, *p, *s;
    unsigned int un;
    int pad = (min_digits != 0);

    if (sizeof(buf) - 1 < min_digits)
 min_digits = sizeof(buf) - 1;

    un = n;
    if (n < 0)
 un = -n;

    p = buf;
    do {
 *p++ = un % 10 + '0';
 un /= 10;
    } while ((pad && (ssize_t)--min_digits > 0) || un != 0);

    res = xmalloc((p - buf + 2) * sizeof(*res));
    s = res;
    if (n < 0)
 *s++ = '-';
    while (p > buf)
 *s++ = *--p | attributes;

    *s = '\0';
    return res;
}
