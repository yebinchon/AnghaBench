
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ameth; } ;
struct TYPE_6__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int DH ;


 int DH_F_DH_PARAM_DECODE ;
 int DHerr (int ,int ) ;
 int ERR_R_DH_LIB ;
 int EVP_PKEY_assign (TYPE_2__*,int ,int *) ;
 int * d2i_dhp (TYPE_2__*,unsigned char const**,int) ;

__attribute__((used)) static int dh_param_decode(EVP_PKEY *pkey,
                           const unsigned char **pder, int derlen)
{
    DH *dh;

    if ((dh = d2i_dhp(pkey, pder, derlen)) == ((void*)0)) {
        DHerr(DH_F_DH_PARAM_DECODE, ERR_R_DH_LIB);
        return 0;
    }
    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, dh);
    return 1;
}
