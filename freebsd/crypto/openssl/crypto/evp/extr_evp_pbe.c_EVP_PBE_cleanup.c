
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_evp_pbe_ctl ;
 int * pbe_algs ;
 int sk_EVP_PBE_CTL_pop_free (int *,int ) ;

void EVP_PBE_cleanup(void)
{
    sk_EVP_PBE_CTL_pop_free(pbe_algs, free_evp_pbe_ctl);
    pbe_algs = ((void*)0);
}
