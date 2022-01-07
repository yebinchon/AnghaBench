
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_utf8_string ;


 int der_put_general_string (unsigned char*,size_t,int const*,size_t*) ;

int
der_put_utf8string (unsigned char *p, size_t len,
      const heim_utf8_string *str, size_t *size)
{
    return der_put_general_string(p, len, str, size);
}
