
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_LOOKUP_get_by_issuer_serial_fn ;
struct TYPE_3__ {int get_by_issuer_serial; } ;
typedef TYPE_1__ X509_LOOKUP_METHOD ;



int X509_LOOKUP_meth_set_get_by_issuer_serial(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_get_by_issuer_serial_fn get_by_issuer_serial)
{
    method->get_by_issuer_serial = get_by_issuer_serial;
    return 1;
}
