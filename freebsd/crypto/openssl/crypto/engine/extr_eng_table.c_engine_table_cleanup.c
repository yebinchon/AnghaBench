
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int piles; } ;
typedef TYPE_1__ ENGINE_TABLE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int global_engine_lock ;
 int int_cleanup_cb_doall ;
 int lh_ENGINE_PILE_doall (int *,int ) ;
 int lh_ENGINE_PILE_free (int *) ;

void engine_table_cleanup(ENGINE_TABLE **table)
{
    CRYPTO_THREAD_write_lock(global_engine_lock);
    if (*table) {
        lh_ENGINE_PILE_doall(&(*table)->piles, int_cleanup_cb_doall);
        lh_ENGINE_PILE_free(&(*table)->piles);
        *table = ((void*)0);
    }
    CRYPTO_THREAD_unlock(global_engine_lock);
}
