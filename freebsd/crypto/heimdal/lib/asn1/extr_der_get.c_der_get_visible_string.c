
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_visible_string ;


 int der_get_general_string (unsigned char const*,size_t,int *,size_t*) ;

int
der_get_visible_string (const unsigned char *p, size_t len,
   heim_visible_string *str, size_t *size)
{
    return der_get_general_string(p, len, str, size);
}
