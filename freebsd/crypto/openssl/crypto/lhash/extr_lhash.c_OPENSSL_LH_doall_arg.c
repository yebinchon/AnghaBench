
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_LH_DOALL_FUNCARG ;
typedef int OPENSSL_LH_DOALL_FUNC ;
typedef int OPENSSL_LHASH ;


 int doall_util_fn (int *,int,int ,int ,void*) ;

void OPENSSL_LH_doall_arg(OPENSSL_LHASH *lh, OPENSSL_LH_DOALL_FUNCARG func, void *arg)
{
    doall_util_fn(lh, 1, (OPENSSL_LH_DOALL_FUNC)0, func, arg);
}
