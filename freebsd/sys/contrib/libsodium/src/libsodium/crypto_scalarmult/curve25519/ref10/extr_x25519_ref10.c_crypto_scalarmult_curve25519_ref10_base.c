
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Z; int Y; } ;
typedef TYPE_1__ ge25519_p3 ;
typedef int fe25519 ;


 int edwards_to_montgomery (int ,int ,int ) ;
 int fe25519_tobytes (unsigned char*,int ) ;
 int ge25519_scalarmult_base (TYPE_1__*,unsigned char*) ;

__attribute__((used)) static int
crypto_scalarmult_curve25519_ref10_base(unsigned char *q,
                                        const unsigned char *n)
{
    unsigned char *t = q;
    ge25519_p3 A;
    fe25519 pk;
    unsigned int i;

    for (i = 0; i < 32; i++) {
        t[i] = n[i];
    }
    t[0] &= 248;
    t[31] &= 127;
    t[31] |= 64;
    ge25519_scalarmult_base(&A, t);
    edwards_to_montgomery(pk, A.Y, A.Z);
    fe25519_tobytes(q, pk);

    return 0;
}
