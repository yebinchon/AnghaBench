
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* krb5_crypto ;
typedef int krb5_context ;
typedef int krb5_boolean ;
struct TYPE_5__ {TYPE_1__* et; } ;
struct TYPE_4__ {int flags; } ;


 int F_DERIVED ;

__attribute__((used)) static krb5_boolean
derived_crypto(krb5_context context,
        krb5_crypto crypto)
{
    return (crypto->et->flags & F_DERIVED) != 0;
}
