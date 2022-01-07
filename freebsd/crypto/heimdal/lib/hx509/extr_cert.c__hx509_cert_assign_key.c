
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_private_key ;
typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {scalar_t__ private_key; } ;


 scalar_t__ _hx509_private_key_ref (int ) ;
 int hx509_private_key_free (scalar_t__*) ;

int
_hx509_cert_assign_key(hx509_cert cert, hx509_private_key private_key)
{
    if (cert->private_key)
 hx509_private_key_free(&cert->private_key);
    cert->private_key = _hx509_private_key_ref(private_key);
    return 0;
}
