
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_error; int io_abd; TYPE_2__* io_spa; TYPE_3__* io_private; int * io_bp; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_6__ {int spa_scrub_lock; int spa_scrub_io_cv; int spa_load_verify_ios; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_7__ {int sle_data_count; int sle_meta_count; } ;
typedef TYPE_3__ spa_load_error_t ;
typedef scalar_t__ dmu_object_type_t ;
typedef int blkptr_t ;


 scalar_t__ BP_GET_LEVEL (int *) ;
 scalar_t__ BP_GET_TYPE (int *) ;
 scalar_t__ DMU_OT_INTENT_LOG ;
 scalar_t__ DMU_OT_IS_METADATA (scalar_t__) ;
 int abd_free (int ) ;
 int atomic_inc_64 (int *) ;
 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
spa_load_verify_done(zio_t *zio)
{
 blkptr_t *bp = zio->io_bp;
 spa_load_error_t *sle = zio->io_private;
 dmu_object_type_t type = BP_GET_TYPE(bp);
 int error = zio->io_error;
 spa_t *spa = zio->io_spa;

 abd_free(zio->io_abd);
 if (error) {
  if ((BP_GET_LEVEL(bp) != 0 || DMU_OT_IS_METADATA(type)) &&
      type != DMU_OT_INTENT_LOG)
   atomic_inc_64(&sle->sle_meta_count);
  else
   atomic_inc_64(&sle->sle_data_count);
 }

 mutex_enter(&spa->spa_scrub_lock);
 spa->spa_load_verify_ios--;
 cv_broadcast(&spa->spa_scrub_io_cv);
 mutex_exit(&spa->spa_scrub_lock);
}
