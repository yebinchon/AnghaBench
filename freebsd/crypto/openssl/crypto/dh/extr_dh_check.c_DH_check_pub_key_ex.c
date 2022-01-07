
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 int DH_CHECK_PUBKEY_INVALID ;
 int DH_CHECK_PUBKEY_TOO_LARGE ;
 int DH_CHECK_PUBKEY_TOO_SMALL ;
 int DH_F_DH_CHECK_PUB_KEY_EX ;
 int DH_R_CHECK_PUBKEY_INVALID ;
 int DH_R_CHECK_PUBKEY_TOO_LARGE ;
 int DH_R_CHECK_PUBKEY_TOO_SMALL ;
 int DH_check_pub_key (int const*,int const*,int*) ;
 int DHerr (int ,int ) ;

int DH_check_pub_key_ex(const DH *dh, const BIGNUM *pub_key)
{
    int errflags = 0;

    if (!DH_check_pub_key(dh, pub_key, &errflags))
        return 0;

    if ((errflags & DH_CHECK_PUBKEY_TOO_SMALL) != 0)
        DHerr(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_TOO_SMALL);
    if ((errflags & DH_CHECK_PUBKEY_TOO_LARGE) != 0)
        DHerr(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_TOO_LARGE);
    if ((errflags & DH_CHECK_PUBKEY_INVALID) != 0)
        DHerr(DH_F_DH_CHECK_PUB_KEY_EX, DH_R_CHECK_PUBKEY_INVALID);

    return errflags == 0;
}
