
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {int * private_key; } ;


 int _hx509_private_key_exportable (int *) ;

int
_hx509_cert_private_key_exportable(hx509_cert p)
{
    if (p->private_key == ((void*)0))
 return 0;
    return _hx509_private_key_exportable(p->private_key);
}
