
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ funct_ref; int (* finish ) (TYPE_1__*) ;} ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ENGINE_F_ENGINE_UNLOCKED_FINISH ;
 int ENGINE_R_FINISH_FAILED ;
 int ENGINEerr (int ,int ) ;
 int REF_ASSERT_ISNT (int) ;
 int engine_free_util (TYPE_1__*,int ) ;
 int engine_ref_debug (TYPE_1__*,int,int) ;
 int global_engine_lock ;
 int stub1 (TYPE_1__*) ;

int engine_unlocked_finish(ENGINE *e, int unlock_for_handlers)
{
    int to_return = 1;
    e->funct_ref--;
    engine_ref_debug(e, 1, -1);
    if ((e->funct_ref == 0) && e->finish) {
        if (unlock_for_handlers)
            CRYPTO_THREAD_unlock(global_engine_lock);
        to_return = e->finish(e);
        if (unlock_for_handlers)
            CRYPTO_THREAD_write_lock(global_engine_lock);
        if (!to_return)
            return 0;
    }
    REF_ASSERT_ISNT(e->funct_ref < 0);

    if (!engine_free_util(e, 0)) {
        ENGINEerr(ENGINE_F_ENGINE_UNLOCKED_FINISH, ENGINE_R_FINISH_FAILED);
        return 0;
    }
    return to_return;
}
