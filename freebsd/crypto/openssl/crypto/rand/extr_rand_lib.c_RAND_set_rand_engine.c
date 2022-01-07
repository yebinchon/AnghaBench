
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
 int ENGINE_init (int *) ;
 int RAND_set_rand_method (int const*) ;
 int RUN_ONCE (int *,int ) ;
 int do_rand_init ;
 int * funct_ref ;
 int rand_engine_lock ;
 int rand_init ;

int RAND_set_rand_engine(ENGINE *engine)
{
    const RAND_METHOD *tmp_meth = ((void*)0);

    if (!RUN_ONCE(&rand_init, do_rand_init))
        return 0;

    if (engine != ((void*)0)) {
        if (!ENGINE_init(engine))
            return 0;
        tmp_meth = ENGINE_get_RAND(engine);
        if (tmp_meth == ((void*)0)) {
            ENGINE_finish(engine);
            return 0;
        }
    }
    CRYPTO_THREAD_write_lock(rand_engine_lock);

    RAND_set_rand_method(tmp_meth);
    funct_ref = engine;
    CRYPTO_THREAD_unlock(rand_engine_lock);
    return 1;
}
