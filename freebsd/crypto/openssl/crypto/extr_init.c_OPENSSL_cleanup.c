
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int sane; int value; } ;
struct TYPE_5__ {struct TYPE_5__* next; int (* handler ) () ;} ;
typedef TYPE_1__ OPENSSL_INIT_STOP ;
typedef int CRYPTO_THREAD_LOCAL ;


 int CRYPTO_THREAD_cleanup_local (int *) ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int CRYPTO_secure_malloc_done () ;
 int OPENSSL_free (TYPE_1__*) ;
 int async_deinit () ;
 scalar_t__ async_inited ;
 scalar_t__ base_inited ;
 int bio_cleanup () ;
 int comp_zlib_cleanup_int () ;
 int conf_modules_free_int () ;
 int crypto_cleanup_all_ex_data_int () ;
 TYPE_3__ destructor_key ;
 int engine_cleanup_int () ;
 int err_cleanup () ;
 int err_free_strings_int () ;
 int evp_cleanup_int () ;
 int fprintf (int ,char*) ;
 int * init_lock ;
 scalar_t__ load_crypto_strings_inited ;
 int obj_cleanup_int () ;
 int ossl_init_get_thread_local (int ) ;
 int ossl_init_thread_stop (int ) ;
 int ossl_store_cleanup_int () ;
 int rand_cleanup_int () ;
 int rand_drbg_cleanup_int () ;
 int stderr ;
 TYPE_1__* stop_handlers ;
 int stopped ;
 int stub1 () ;
 scalar_t__ zlib_inited ;

void OPENSSL_cleanup(void)
{
    OPENSSL_INIT_STOP *currhandler, *lasthandler;
    CRYPTO_THREAD_LOCAL key;


    if (!base_inited)
        return;


    if (stopped)
        return;
    stopped = 1;





    ossl_init_thread_stop(ossl_init_get_thread_local(0));

    currhandler = stop_handlers;
    while (currhandler != ((void*)0)) {
        currhandler->handler();
        lasthandler = currhandler;
        currhandler = currhandler->next;
        OPENSSL_free(lasthandler);
    }
    stop_handlers = ((void*)0);

    CRYPTO_THREAD_lock_free(init_lock);
    init_lock = ((void*)0);







    if (zlib_inited) {




        comp_zlib_cleanup_int();
    }


    if (async_inited) {




        async_deinit();
    }

    if (load_crypto_strings_inited) {




        err_free_strings_int();
    }

    key = destructor_key.value;
    destructor_key.sane = -1;
    CRYPTO_THREAD_cleanup_local(&key);
    rand_cleanup_int();
    rand_drbg_cleanup_int();
    conf_modules_free_int();

    engine_cleanup_int();

    ossl_store_cleanup_int();
    crypto_cleanup_all_ex_data_int();
    bio_cleanup();
    evp_cleanup_int();
    obj_cleanup_int();
    err_cleanup();

    CRYPTO_secure_malloc_done();

    base_inited = 0;
}
