
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {size_t length; int data; } ;
typedef TYPE_1__ heim_octet_string ;


 int _heim_time2generalizedtime (int const,TYPE_1__*,int ) ;
 int free (int ) ;

size_t
der_length_utctime (const time_t *t)
{
    heim_octet_string k;
    size_t ret;

    _heim_time2generalizedtime (*t, &k, 0);
    ret = k.length;
    free(k.data);
    return ret;
}
