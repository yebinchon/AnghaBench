
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 scalar_t__ EVP_CIPHER_CTX_ctrl (int *,int ,int ,int*) ;
 int EVP_CTRL_GET_RC2_KEY_BITS ;
 int RC2_128_MAGIC ;
 int RC2_40_MAGIC ;
 int RC2_64_MAGIC ;

__attribute__((used)) static int rc2_meth_to_magic(EVP_CIPHER_CTX *e)
{
    int i;

    if (EVP_CIPHER_CTX_ctrl(e, EVP_CTRL_GET_RC2_KEY_BITS, 0, &i) <= 0)
        return 0;
    if (i == 128)
        return RC2_128_MAGIC;
    else if (i == 64)
        return RC2_64_MAGIC;
    else if (i == 40)
        return RC2_40_MAGIC;
    else
        return 0;
}
