
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_any_set ;


 int der_put_octet_string (unsigned char*,size_t,int const*,size_t*) ;

int
encode_heim_any_set(unsigned char *p, size_t len,
      const heim_any_set *data, size_t *size)
{
    return der_put_octet_string (p, len, data, size);
}
