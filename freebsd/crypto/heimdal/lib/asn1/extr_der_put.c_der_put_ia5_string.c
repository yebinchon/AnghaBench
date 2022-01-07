
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_ia5_string ;


 int der_put_octet_string (unsigned char*,size_t,int const*,size_t*) ;

int
der_put_ia5_string (unsigned char *p, size_t len,
      const heim_ia5_string *str, size_t *size)
{
    return der_put_octet_string(p, len, str, size);
}
