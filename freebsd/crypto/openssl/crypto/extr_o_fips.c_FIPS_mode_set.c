
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_FIPS_MODE_SET ;
 int CRYPTO_R_FIPS_MODE_NOT_SUPPORTED ;
 int CRYPTOerr (int ,int ) ;

int FIPS_mode_set(int r)
{
    if (r == 0)
        return 1;
    CRYPTOerr(CRYPTO_F_FIPS_MODE_SET, CRYPTO_R_FIPS_MODE_NOT_SUPPORTED);
    return 0;
}
