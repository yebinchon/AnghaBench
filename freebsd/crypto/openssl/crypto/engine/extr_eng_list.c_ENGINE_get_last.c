
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int struct_ref; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_GET_LAST ;
 int ENGINEerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int RUN_ONCE (int *,int ) ;
 int do_engine_lock_init ;
 TYPE_1__* engine_list_tail ;
 int engine_lock_init ;
 int engine_ref_debug (TYPE_1__*,int ,int) ;
 int global_engine_lock ;

ENGINE *ENGINE_get_last(void)
{
    ENGINE *ret;

    if (!RUN_ONCE(&engine_lock_init, do_engine_lock_init)) {
        ENGINEerr(ENGINE_F_ENGINE_GET_LAST, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    CRYPTO_THREAD_write_lock(global_engine_lock);
    ret = engine_list_tail;
    if (ret) {
        ret->struct_ref++;
        engine_ref_debug(ret, 0, 1);
    }
    CRYPTO_THREAD_unlock(global_engine_lock);
    return ret;
}
