
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; void* data; } ;
typedef TYPE_1__ heim_octet_string ;


 int rk_undumpdata (char const*,void**,size_t*) ;

int
_hx509_map_file_os(const char *fn, heim_octet_string *os)
{
    size_t length;
    void *data;
    int ret;

    ret = rk_undumpdata(fn, &data, &length);

    os->data = data;
    os->length = length;

    return ret;
}
