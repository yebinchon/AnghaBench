
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** dbu_clear_on_evict_dbufp; int * dbu_evict_func_async; int * dbu_evict_func_sync; } ;
typedef TYPE_1__ dmu_buf_user_t ;
typedef int dmu_buf_t ;
typedef int dmu_buf_evict_func_t ;


 int ASSERT (int ) ;
 int IMPLY (int ,int ) ;

inline void
dmu_buf_init_user(dmu_buf_user_t *dbu, dmu_buf_evict_func_t *evict_func_sync,
    dmu_buf_evict_func_t *evict_func_async, dmu_buf_t **clear_on_evict_dbufp)
{
 ASSERT(dbu->dbu_evict_func_sync == ((void*)0));
 ASSERT(dbu->dbu_evict_func_async == ((void*)0));


 IMPLY(evict_func_sync == ((void*)0), evict_func_async != ((void*)0));
 dbu->dbu_evict_func_sync = evict_func_sync;
 dbu->dbu_evict_func_async = evict_func_async;



}
