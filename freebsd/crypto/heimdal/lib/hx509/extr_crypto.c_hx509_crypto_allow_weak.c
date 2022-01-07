
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_crypto ;
struct TYPE_3__ {int flags; } ;


 int ALLOW_WEAK ;

void
hx509_crypto_allow_weak(hx509_crypto crypto)
{
    crypto->flags |= ALLOW_WEAK;
}
