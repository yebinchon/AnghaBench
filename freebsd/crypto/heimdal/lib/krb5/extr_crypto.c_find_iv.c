
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int flags; } ;
typedef TYPE_1__ krb5_crypto_iov ;



__attribute__((used)) static krb5_crypto_iov *
find_iv(krb5_crypto_iov *data, size_t num_data, unsigned type)
{
    size_t i;
    for (i = 0; i < num_data; i++)
 if (data[i].flags == type)
     return &data[i];
    return ((void*)0);
}
