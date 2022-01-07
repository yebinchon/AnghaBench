
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {scalar_t__ db_level; scalar_t__ db_blkid; TYPE_1__* db_objset; TYPE_5__* db_data_pending; int db_mtx; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
struct TYPE_9__ {scalar_t__ dr_override_state; int dr_data; int dr_nopwrite; int dr_overridden_by; } ;
struct TYPE_10__ {TYPE_2__ dl; } ;
struct TYPE_12__ {TYPE_3__ dt; int dr_txg; TYPE_4__* dr_dbuf; } ;
typedef TYPE_5__ dbuf_dirty_record_t ;
typedef int blkptr_t ;
struct TYPE_8__ {int os_spa; } ;


 int ASSERT (int) ;
 int BP_IS_HOLE (int *) ;
 int B_FALSE ;
 scalar_t__ DMU_BONUS_BLKID ;
 scalar_t__ DR_IN_DMU_SYNC ;
 scalar_t__ DR_NOT_OVERRIDDEN ;
 int MUTEX_HELD (int *) ;
 int arc_release (int ,TYPE_4__*) ;
 int zio_free (int ,int ,int *) ;

void
dbuf_unoverride(dbuf_dirty_record_t *dr)
{
 dmu_buf_impl_t *db = dr->dr_dbuf;
 blkptr_t *bp = &dr->dt.dl.dr_overridden_by;
 uint64_t txg = dr->dr_txg;

 ASSERT(MUTEX_HELD(&db->db_mtx));





 ASSERT(dr->dt.dl.dr_override_state != DR_IN_DMU_SYNC);
 ASSERT(db->db_level == 0);

 if (db->db_blkid == DMU_BONUS_BLKID ||
     dr->dt.dl.dr_override_state == DR_NOT_OVERRIDDEN)
  return;

 ASSERT(db->db_data_pending != dr);


 if (!BP_IS_HOLE(bp) && !dr->dt.dl.dr_nopwrite)
  zio_free(db->db_objset->os_spa, txg, bp);

 dr->dt.dl.dr_override_state = DR_NOT_OVERRIDDEN;
 dr->dt.dl.dr_nopwrite = B_FALSE;
 arc_release(dr->dt.dl.dr_data, db);
}
