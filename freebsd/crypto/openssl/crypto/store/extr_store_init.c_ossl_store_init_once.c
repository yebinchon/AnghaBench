
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_R_MALLOC_FAILURE ;
 int OSSL_STORE_F_OSSL_STORE_INIT_ONCE ;
 int OSSL_STOREerr (int ,int ) ;
 int RUN_ONCE (int *,int ) ;
 int do_store_init ;
 int store_init ;

int ossl_store_init_once(void)
{
    if (!RUN_ONCE(&store_init, do_store_init)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_INIT_ONCE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
