
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 unsigned long ULONG_MAX ;
 int errno ;
 int opt_number_error (char const*) ;
 unsigned long strtoul (char const*,char**,int ) ;

int opt_ulong(const char *value, unsigned long *result)
{
    int oerrno = errno;
    char *endptr;
    unsigned long l;

    errno = 0;
    l = strtoul(value, &endptr, 0);
    if (*endptr
            || endptr == value
            || ((l == ULONG_MAX) && errno == ERANGE)
            || (l == 0 && errno != 0)) {
        opt_number_error(value);
        errno = oerrno;
        return 0;
    }
    *result = l;
    errno = oerrno;
    return 1;
}
