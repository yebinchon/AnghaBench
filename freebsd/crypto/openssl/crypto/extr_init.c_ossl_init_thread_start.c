
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thread_local_inits_st {int async; int err_state; int rand; } ;


 int OPENSSL_INIT_THREAD_ASYNC ;
 int OPENSSL_INIT_THREAD_ERR_STATE ;
 int OPENSSL_INIT_THREAD_RAND ;
 int OPENSSL_init_crypto (int ,int *) ;
 int fprintf (int ,char*) ;
 struct thread_local_inits_st* ossl_init_get_thread_local (int) ;
 int stderr ;

int ossl_init_thread_start(uint64_t opts)
{
    struct thread_local_inits_st *locals;

    if (!OPENSSL_init_crypto(0, ((void*)0)))
        return 0;

    locals = ossl_init_get_thread_local(1);

    if (locals == ((void*)0))
        return 0;

    if (opts & OPENSSL_INIT_THREAD_ASYNC) {




        locals->async = 1;
    }

    if (opts & OPENSSL_INIT_THREAD_ERR_STATE) {




        locals->err_state = 1;
    }

    if (opts & OPENSSL_INIT_THREAD_RAND) {




        locals->rand = 1;
    }

    return 1;
}
