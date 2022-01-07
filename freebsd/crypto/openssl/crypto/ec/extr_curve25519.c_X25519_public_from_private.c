
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int Y; int Z; } ;
typedef TYPE_1__ ge_p3 ;
typedef int fe ;
typedef int e ;


 int OPENSSL_cleanse (int*,int) ;
 int fe_add (int ,int ,int ) ;
 int fe_invert (int ,int ) ;
 int fe_mul (int ,int ,int ) ;
 int fe_sub (int ,int ,int ) ;
 int fe_tobytes (int*,int ) ;
 int ge_scalarmult_base (TYPE_1__*,int*) ;
 int memcpy (int*,int const*,int) ;

void X25519_public_from_private(uint8_t out_public_value[32],
                                const uint8_t private_key[32])
{
    uint8_t e[32];
    ge_p3 A;
    fe zplusy, zminusy, zminusy_inv;

    memcpy(e, private_key, 32);
    e[0] &= 248;
    e[31] &= 127;
    e[31] |= 64;

    ge_scalarmult_base(&A, e);






    fe_add(zplusy, A.Z, A.Y);
    fe_sub(zminusy, A.Z, A.Y);
    fe_invert(zminusy_inv, zminusy);
    fe_mul(zplusy, zplusy, zminusy_inv);
    fe_tobytes(out_public_value, zplusy);

    OPENSSL_cleanse(e, sizeof(e));
}
