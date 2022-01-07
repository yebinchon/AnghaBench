
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* hx509_cert ;
typedef int heim_integer ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_5__ {int serialNumber; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;


 int der_copy_heim_integer (int *,int *) ;

int
hx509_cert_get_serialnumber(hx509_cert p, heim_integer *i)
{
    return der_copy_heim_integer(&p->data->tbsCertificate.serialNumber, i);
}
