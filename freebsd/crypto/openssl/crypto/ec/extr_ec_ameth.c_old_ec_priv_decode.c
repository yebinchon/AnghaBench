
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_F_OLD_EC_PRIV_DECODE ;
 int EC_R_DECODE_ERROR ;
 int ECerr (int ,int ) ;
 int EVP_PKEY_assign_EC_KEY (int *,int *) ;
 int * d2i_ECPrivateKey (int *,unsigned char const**,int) ;

__attribute__((used)) static int old_ec_priv_decode(EVP_PKEY *pkey,
                              const unsigned char **pder, int derlen)
{
    EC_KEY *ec;

    if ((ec = d2i_ECPrivateKey(((void*)0), pder, derlen)) == ((void*)0)) {
        ECerr(EC_F_OLD_EC_PRIV_DECODE, EC_R_DECODE_ERROR);
        return 0;
    }
    EVP_PKEY_assign_EC_KEY(pkey, ec);
    return 1;
}
