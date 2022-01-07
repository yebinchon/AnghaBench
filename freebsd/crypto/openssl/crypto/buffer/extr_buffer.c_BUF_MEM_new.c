
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF_MEM ;


 int BUF_F_BUF_MEM_NEW ;
 int BUFerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int * OPENSSL_zalloc (int) ;

BUF_MEM *BUF_MEM_new(void)
{
    BUF_MEM *ret;

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        BUFerr(BUF_F_BUF_MEM_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    return ret;
}
