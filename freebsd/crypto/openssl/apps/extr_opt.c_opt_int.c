
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,int ,char const*) ;
 int bio_err ;
 int opt_long (char const*,long*) ;
 int prog ;

int opt_int(const char *value, int *result)
{
    long l;

    if (!opt_long(value, &l))
        return 0;
    *result = (int)l;
    if (*result != l) {
        BIO_printf(bio_err, "%s: Value \"%s\" outside integer range\n",
                   prog, value);
        return 0;
    }
    return 1;
}
