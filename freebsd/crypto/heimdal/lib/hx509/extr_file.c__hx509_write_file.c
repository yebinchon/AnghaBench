
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rk_dumpdata (char const*,void const*,size_t) ;

int
_hx509_write_file(const char *fn, const void *data, size_t length)
{
    rk_dumpdata(fn, data, length);
    return 0;
}
