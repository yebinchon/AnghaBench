
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* mult ) (unsigned char*,unsigned char const*,unsigned char const*) ;} ;


 size_t crypto_scalarmult_curve25519_BYTES ;
 TYPE_1__* implementation ;
 scalar_t__ stub1 (unsigned char*,unsigned char const*,unsigned char const*) ;

int
crypto_scalarmult_curve25519(unsigned char *q, const unsigned char *n,
                             const unsigned char *p)
{
    size_t i;
    volatile unsigned char d = 0;

    if (implementation->mult(q, n, p) != 0) {
        return -1;
    }
    for (i = 0; i < crypto_scalarmult_curve25519_BYTES; i++) {
        d |= q[i];
    }
    return -(1 & ((d - 1) >> 8));
}
