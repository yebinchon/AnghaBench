
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_any_set ;


 int der_get_octet_string (unsigned char const*,size_t,int *,size_t*) ;

int
decode_heim_any_set(const unsigned char *p, size_t len,
  heim_any_set *data, size_t *size)
{
    return der_get_octet_string(p, len, data, size);
}
