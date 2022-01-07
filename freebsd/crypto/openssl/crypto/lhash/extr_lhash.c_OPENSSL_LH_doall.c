
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_LH_DOALL_FUNCARG ;
typedef int OPENSSL_LH_DOALL_FUNC ;
typedef int OPENSSL_LHASH ;


 int doall_util_fn (int *,int ,int ,int ,int *) ;

void OPENSSL_LH_doall(OPENSSL_LHASH *lh, OPENSSL_LH_DOALL_FUNC func)
{
    doall_util_fn(lh, 0, func, (OPENSSL_LH_DOALL_FUNCARG)0, ((void*)0));
}
