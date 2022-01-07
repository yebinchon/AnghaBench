
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_VERIFY_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;
 int TS_F_TS_VERIFY_CTX_NEW ;
 int TSerr (int ,int ) ;

TS_VERIFY_CTX *TS_VERIFY_CTX_new(void)
{
    TS_VERIFY_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        TSerr(TS_F_TS_VERIFY_CTX_NEW, ERR_R_MALLOC_FAILURE);
    return ctx;
}
