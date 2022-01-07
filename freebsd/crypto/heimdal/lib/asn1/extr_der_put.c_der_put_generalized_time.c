
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int _heim_time2generalizedtime (int const,TYPE_1__*,int) ;
 int der_put_octet_string (unsigned char*,size_t,TYPE_1__*,size_t*) ;
 int free (int ) ;

int
der_put_generalized_time (unsigned char *p, size_t len,
     const time_t *data, size_t *size)
{
    heim_octet_string k;
    size_t l;
    int e;

    e = _heim_time2generalizedtime (*data, &k, 1);
    if (e)
 return e;
    e = der_put_octet_string(p, len, &k, &l);
    free(k.data);
    if(e)
 return e;
    if(size)
 *size = l;
    return 0;
}
