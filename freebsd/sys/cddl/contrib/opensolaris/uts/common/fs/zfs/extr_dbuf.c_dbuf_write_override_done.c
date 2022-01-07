
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * io_abd; int io_txg; int io_spa; int io_bp; TYPE_5__* io_private; } ;
typedef TYPE_3__ zio_t ;
struct TYPE_13__ {int db_mtx; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
struct TYPE_10__ {int dr_data; int dr_overridden_by; } ;
struct TYPE_11__ {TYPE_1__ dl; } ;
struct TYPE_14__ {TYPE_2__ dt; TYPE_4__* dr_dbuf; } ;
typedef TYPE_5__ dbuf_dirty_record_t ;
typedef int blkptr_t ;


 int BP_EQUAL (int ,int *) ;
 int BP_IS_HOLE (int *) ;
 int abd_put (int *) ;
 int arc_release (int ,TYPE_4__*) ;
 int dbuf_write_done (TYPE_3__*,int *,TYPE_4__*) ;
 int dsl_free (int ,int ,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_get_dsl (int ) ;

__attribute__((used)) static void
dbuf_write_override_done(zio_t *zio)
{
 dbuf_dirty_record_t *dr = zio->io_private;
 dmu_buf_impl_t *db = dr->dr_dbuf;
 blkptr_t *obp = &dr->dt.dl.dr_overridden_by;

 mutex_enter(&db->db_mtx);
 if (!BP_EQUAL(zio->io_bp, obp)) {
  if (!BP_IS_HOLE(obp))
   dsl_free(spa_get_dsl(zio->io_spa), zio->io_txg, obp);
  arc_release(dr->dt.dl.dr_data, db);
 }
 mutex_exit(&db->db_mtx);
 dbuf_write_done(zio, ((void*)0), db);

 if (zio->io_abd != ((void*)0))
  abd_put(zio->io_abd);
}
