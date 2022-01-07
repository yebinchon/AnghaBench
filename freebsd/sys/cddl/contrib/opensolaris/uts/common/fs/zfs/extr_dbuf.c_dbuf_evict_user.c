
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dbu_tqent; int * dbu_evict_func_async; int (* dbu_evict_func_sync ) (TYPE_1__*) ;int ** dbu_clear_on_evict_dbufp; } ;
typedef TYPE_1__ dmu_buf_user_t ;
struct TYPE_8__ {TYPE_1__* db_user; int db_mtx; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int ) ;
 int DBVU_EVICTING ;
 int MUTEX_HELD (int *) ;
 int dbu_evict_taskq ;
 int dbuf_verify_user (TYPE_2__*,int ) ;
 int stub1 (TYPE_1__*) ;
 int taskq_dispatch_ent (int ,int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static void
dbuf_evict_user(dmu_buf_impl_t *db)
{
 dmu_buf_user_t *dbu = db->db_user;

 ASSERT(MUTEX_HELD(&db->db_mtx));

 if (dbu == ((void*)0))
  return;

 dbuf_verify_user(db, DBVU_EVICTING);
 db->db_user = ((void*)0);
 boolean_t has_async = (dbu->dbu_evict_func_async != ((void*)0));

 if (dbu->dbu_evict_func_sync != ((void*)0))
  dbu->dbu_evict_func_sync(dbu);

 if (has_async) {
  taskq_dispatch_ent(dbu_evict_taskq, dbu->dbu_evict_func_async,
      dbu, 0, &dbu->dbu_tqent);
 }
}
