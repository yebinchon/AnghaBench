
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_cert ;
struct TYPE_3__ {scalar_t__ private_key; } ;



int
hx509_cert_have_private_key(hx509_cert p)
{
    return p->private_key ? 1 : 0;
}
