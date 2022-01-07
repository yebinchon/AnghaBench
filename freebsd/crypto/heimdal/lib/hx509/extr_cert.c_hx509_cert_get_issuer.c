
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_name ;
typedef TYPE_3__* hx509_cert ;
struct TYPE_7__ {TYPE_2__* data; } ;
struct TYPE_5__ {int issuer; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; } ;


 int _hx509_name_from_Name (int *,int *) ;

int
hx509_cert_get_issuer(hx509_cert p, hx509_name *name)
{
    return _hx509_name_from_Name(&p->data->tbsCertificate.issuer, name);
}
