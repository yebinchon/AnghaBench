
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_private_key ;
typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {int private_key; } ;



hx509_private_key
_hx509_cert_private_key(hx509_cert p)
{
    return p->private_key;
}
