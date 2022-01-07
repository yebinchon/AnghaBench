
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_F_RC2_MAGIC_TO_METH ;
 int EVP_R_UNSUPPORTED_KEY_SIZE ;
 int EVPerr (int ,int ) ;
 int RC2_128_MAGIC ;
 int RC2_40_MAGIC ;
 int RC2_64_MAGIC ;

__attribute__((used)) static int rc2_magic_to_meth(int i)
{
    if (i == RC2_128_MAGIC)
        return 128;
    else if (i == RC2_64_MAGIC)
        return 64;
    else if (i == RC2_40_MAGIC)
        return 40;
    else {
        EVPerr(EVP_F_RC2_MAGIC_TO_METH, EVP_R_UNSUPPORTED_KEY_SIZE);
        return 0;
    }
}
