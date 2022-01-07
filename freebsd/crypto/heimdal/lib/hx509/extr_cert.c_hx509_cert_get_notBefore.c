
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int time_t ;
typedef TYPE_4__* hx509_cert ;
struct TYPE_9__ {TYPE_3__* data; } ;
struct TYPE_6__ {int notBefore; } ;
struct TYPE_7__ {TYPE_1__ validity; } ;
struct TYPE_8__ {TYPE_2__ tbsCertificate; } ;


 int _hx509_Time2time_t (int *) ;

time_t
hx509_cert_get_notBefore(hx509_cert p)
{
    return _hx509_Time2time_t(&p->data->tbsCertificate.validity.notBefore);
}
