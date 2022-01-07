
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* os_dsl_dataset; int os_phys_buf; } ;
typedef TYPE_3__ objset_t ;
struct TYPE_11__ {int db_buf; TYPE_2__* db_parent; TYPE_3__* db_objset; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
struct TYPE_9__ {int db_buf; } ;
struct TYPE_8__ {int ds_synced_link; } ;


 int ASSERT (int) ;
 int arc_release (int ,TYPE_4__*) ;
 scalar_t__ arc_released (int ) ;
 int dmu_objset_pool (TYPE_3__*) ;
 int dsl_pool_sync_context (int ) ;
 scalar_t__ list_link_active (int *) ;

void
dbuf_release_bp(dmu_buf_impl_t *db)
{
 objset_t *os = db->db_objset;

 ASSERT(dsl_pool_sync_context(dmu_objset_pool(os)));
 ASSERT(arc_released(os->os_phys_buf) ||
     list_link_active(&os->os_dsl_dataset->ds_synced_link));
 ASSERT(db->db_parent == ((void*)0) || arc_released(db->db_parent->db_buf));

 (void) arc_release(db->db_buf, db);
}
