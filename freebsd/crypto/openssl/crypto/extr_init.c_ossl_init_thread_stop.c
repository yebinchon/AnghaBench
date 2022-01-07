
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_local_inits_st {scalar_t__ rand; scalar_t__ err_state; scalar_t__ async; } ;


 int OPENSSL_free (struct thread_local_inits_st*) ;
 int async_delete_thread_state () ;
 int drbg_delete_thread_state () ;
 int err_delete_thread_state () ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void ossl_init_thread_stop(struct thread_local_inits_st *locals)
{

    if (locals == ((void*)0))
        return;

    if (locals->async) {




        async_delete_thread_state();
    }

    if (locals->err_state) {




        err_delete_thread_state();
    }

    if (locals->rand) {




        drbg_delete_thread_state();
    }

    OPENSSL_free(locals);
}
