
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_generichash_state ;


 int crypto_box_NONCEBYTES ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_generichash_final (int *,unsigned char*,int ) ;
 int crypto_generichash_init (int *,int *,unsigned int,int ) ;
 int crypto_generichash_update (int *,unsigned char const*,int ) ;

__attribute__((used)) static int
_crypto_box_seal_nonce(unsigned char *nonce,
                       const unsigned char *pk1, const unsigned char *pk2)
{
    crypto_generichash_state st;

    crypto_generichash_init(&st, ((void*)0), 0U, crypto_box_NONCEBYTES);
    crypto_generichash_update(&st, pk1, crypto_box_PUBLICKEYBYTES);
    crypto_generichash_update(&st, pk2, crypto_box_PUBLICKEYBYTES);
    crypto_generichash_final(&st, nonce, crypto_box_NONCEBYTES);

    return 0;
}
