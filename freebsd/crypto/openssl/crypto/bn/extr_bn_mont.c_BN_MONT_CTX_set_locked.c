
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_RWLOCK ;
typedef int BN_MONT_CTX ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_MONT_CTX_free (int *) ;
 int * BN_MONT_CTX_new () ;
 int BN_MONT_CTX_set (int *,int const*,int *) ;
 int CRYPTO_THREAD_read_lock (int *) ;
 int CRYPTO_THREAD_unlock (int *) ;
 int CRYPTO_THREAD_write_lock (int *) ;

BN_MONT_CTX *BN_MONT_CTX_set_locked(BN_MONT_CTX **pmont, CRYPTO_RWLOCK *lock,
                                    const BIGNUM *mod, BN_CTX *ctx)
{
    BN_MONT_CTX *ret;

    CRYPTO_THREAD_read_lock(lock);
    ret = *pmont;
    CRYPTO_THREAD_unlock(lock);
    if (ret)
        return ret;
    ret = BN_MONT_CTX_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (!BN_MONT_CTX_set(ret, mod, ctx)) {
        BN_MONT_CTX_free(ret);
        return ((void*)0);
    }


    CRYPTO_THREAD_write_lock(lock);
    if (*pmont) {
        BN_MONT_CTX_free(ret);
        ret = *pmont;
    } else
        *pmont = ret;
    CRYPTO_THREAD_unlock(lock);
    return ret;
}
