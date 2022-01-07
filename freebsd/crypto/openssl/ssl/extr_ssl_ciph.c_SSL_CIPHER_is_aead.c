
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algorithm_mac; } ;
typedef TYPE_1__ SSL_CIPHER ;


 int SSL_AEAD ;

int SSL_CIPHER_is_aead(const SSL_CIPHER *c)
{
    return (c->algorithm_mac & SSL_AEAD) ? 1 : 0;
}
