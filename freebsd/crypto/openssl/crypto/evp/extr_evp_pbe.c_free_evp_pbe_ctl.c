
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PBE_CTL ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static void free_evp_pbe_ctl(EVP_PBE_CTL *pbe)
{
    OPENSSL_free(pbe);
}
