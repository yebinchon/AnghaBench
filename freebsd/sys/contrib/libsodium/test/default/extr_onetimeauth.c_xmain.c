
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_onetimeauth_state ;


 scalar_t__* a ;
 int assert (int) ;
 scalar_t__ c ;
 int crypto_onetimeauth (scalar_t__*,scalar_t__,int,int ) ;
 unsigned int crypto_onetimeauth_bytes () ;
 int crypto_onetimeauth_final (int *,scalar_t__*) ;
 int crypto_onetimeauth_init (int *,int ) ;
 unsigned int crypto_onetimeauth_keybytes () ;
 unsigned int crypto_onetimeauth_poly1305_bytes () ;
 unsigned int crypto_onetimeauth_poly1305_keybytes () ;
 int crypto_onetimeauth_poly1305_statebytes () ;
 int crypto_onetimeauth_primitive () ;
 int crypto_onetimeauth_statebytes () ;
 int crypto_onetimeauth_update (int *,scalar_t__,int) ;
 int memset (scalar_t__*,int ,int) ;
 int printf (char*,...) ;
 int rs ;
 scalar_t__ strcmp (int ,char*) ;

int
main(void)
{
    crypto_onetimeauth_state st;
    int i;

    assert(crypto_onetimeauth_statebytes() == sizeof st);
    crypto_onetimeauth(a, c, 131, rs);
    for (i = 0; i < 16; ++i) {
        printf(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            printf("\n");
    }

    memset(a, 0, sizeof a);
    crypto_onetimeauth_init(&st, rs);
    crypto_onetimeauth_update(&st, c, 100);
    crypto_onetimeauth_update(&st, c, 0);
    crypto_onetimeauth_update(&st, c + 100, 31);
    crypto_onetimeauth_final(&st, a);
    for (i = 0; i < 16; ++i) {
        printf(",0x%02x", (unsigned int) a[i]);
        if (i % 8 == 7)
            printf("\n");
    }

    assert(crypto_onetimeauth_bytes() > 0U);
    assert(crypto_onetimeauth_keybytes() > 0U);
    assert(strcmp(crypto_onetimeauth_primitive(), "poly1305") == 0);
    assert(crypto_onetimeauth_poly1305_bytes() == crypto_onetimeauth_bytes());
    assert(crypto_onetimeauth_poly1305_keybytes() ==
           crypto_onetimeauth_keybytes());
    assert(crypto_onetimeauth_statebytes() > 0);
    assert(crypto_onetimeauth_statebytes() == crypto_onetimeauth_poly1305_statebytes());

    return 0;
}
