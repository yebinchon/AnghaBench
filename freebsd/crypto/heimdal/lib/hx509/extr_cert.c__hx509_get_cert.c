
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {int * data; } ;
typedef int Certificate ;



Certificate *
_hx509_get_cert(hx509_cert cert)
{
    return cert->data;
}
