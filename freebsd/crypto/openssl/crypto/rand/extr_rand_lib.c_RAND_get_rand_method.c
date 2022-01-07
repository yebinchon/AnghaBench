
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_METHOD ;
typedef int ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_finish (int *) ;
 int * ENGINE_get_RAND (int *) ;
 int * ENGINE_get_default_RAND () ;
 int RUN_ONCE (int *,int ) ;
 int const* default_RAND_meth ;
 int do_rand_init ;
 int * funct_ref ;
 int rand_init ;
 int rand_meth ;
 int rand_meth_lock ;

const RAND_METHOD *RAND_get_rand_method(void)
{
    const RAND_METHOD *tmp_meth = ((void*)0);

    if (!RUN_ONCE(&rand_init, do_rand_init))
        return ((void*)0);

    CRYPTO_THREAD_write_lock(rand_meth_lock);
    if (default_RAND_meth == ((void*)0)) {

        ENGINE *e;


        if ((e = ENGINE_get_default_RAND()) != ((void*)0)
                && (tmp_meth = ENGINE_get_RAND(e)) != ((void*)0)) {
            funct_ref = e;
            default_RAND_meth = tmp_meth;
        } else {
            ENGINE_finish(e);
            default_RAND_meth = &rand_meth;
        }



    }
    tmp_meth = default_RAND_meth;
    CRYPTO_THREAD_unlock(rand_meth_lock);
    return tmp_meth;
}
