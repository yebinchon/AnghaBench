
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 long LONG_MAX ;
 long LONG_MIN ;
 int errno ;
 int opt_number_error (char const*) ;
 long strtol (char const*,char**,int ) ;

int opt_long(const char *value, long *result)
{
    int oerrno = errno;
    long l;
    char *endp;

    errno = 0;
    l = strtol(value, &endp, 0);
    if (*endp
            || endp == value
            || ((l == LONG_MAX || l == LONG_MIN) && errno == ERANGE)
            || (l == 0 && errno != 0)) {
        opt_number_error(value);
        errno = oerrno;
        return 0;
    }
    *result = l;
    errno = oerrno;
    return 1;
}
