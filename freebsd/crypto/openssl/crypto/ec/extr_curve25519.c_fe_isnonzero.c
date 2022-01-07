
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
typedef int uint8_t ;
typedef int fe ;


 scalar_t__ CRYPTO_memcmp (int *,int const*,int) ;
 int fe_tobytes (int *,int const) ;

__attribute__((used)) static int fe_isnonzero(const fe f)
{
    uint8_t s[32];
    static const uint8_t zero[32] = {0};

    fe_tobytes(s, f);

    return CRYPTO_memcmp(s, zero, sizeof(zero)) != 0;
}
