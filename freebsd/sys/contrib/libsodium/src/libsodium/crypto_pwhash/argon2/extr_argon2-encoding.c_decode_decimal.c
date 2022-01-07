
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ULONG_MAX ;

__attribute__((used)) static const char *
decode_decimal(const char *str, unsigned long *v)
{
    const char *orig;
    unsigned long acc;

    acc = 0;
    for (orig = str;; str++) {
        int c;

        c = *str;
        if (c < '0' || c > '9') {
            break;
        }
        c -= '0';
        if (acc > (ULONG_MAX / 10)) {
            return ((void*)0);
        }
        acc *= 10;
        if ((unsigned long) c > (ULONG_MAX - acc)) {
            return ((void*)0);
        }
        acc += (unsigned long) c;
    }
    if (str == orig || (*orig == '0' && str != (orig + 1))) {
        return ((void*)0);
    }
    *v = acc;
    return str;
}
