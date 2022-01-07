
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int der_get_time (unsigned char const*,size_t,int *,size_t*) ;

int
der_get_generalized_time (const unsigned char *p, size_t len,
     time_t *data, size_t *size)
{
    return der_get_time(p, len, data, size);
}
