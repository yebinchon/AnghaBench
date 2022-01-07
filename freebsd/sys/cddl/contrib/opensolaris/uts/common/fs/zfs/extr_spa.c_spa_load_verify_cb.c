
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int io_private; } ;
typedef TYPE_1__ zio_t ;
typedef int zilog_t ;
typedef int zbookmark_phys_t ;
struct TYPE_7__ {scalar_t__ spa_load_verify_ios; int spa_scrub_lock; int spa_scrub_io_cv; } ;
typedef TYPE_2__ spa_t ;
typedef int dnode_phys_t ;
typedef int blkptr_t ;


 size_t BP_GET_PSIZE (int const*) ;
 scalar_t__ BP_IS_EMBEDDED (int const*) ;
 scalar_t__ BP_IS_HOLE (int const*) ;
 int BP_IS_METADATA (int const*) ;
 int B_FALSE ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_RAW ;
 int ZIO_FLAG_SCRUB ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_SCRUB ;
 int abd_alloc_for_io (size_t,int ) ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_load_verify_data ;
 int spa_load_verify_done ;
 scalar_t__ spa_load_verify_maxinflight ;
 int spa_load_verify_metadata ;
 int zio_nowait (int ) ;
 int zio_read (TYPE_1__*,TYPE_2__*,int const*,int ,size_t,int ,int ,int ,int,int const*) ;

__attribute__((used)) static int
spa_load_verify_cb(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
 if (bp == ((void*)0) || BP_IS_HOLE(bp) || BP_IS_EMBEDDED(bp))
  return (0);





 if (!spa_load_verify_metadata)
  return (0);
 if (!BP_IS_METADATA(bp) && !spa_load_verify_data)
  return (0);

 zio_t *rio = arg;
 size_t size = BP_GET_PSIZE(bp);

 mutex_enter(&spa->spa_scrub_lock);
 while (spa->spa_load_verify_ios >= spa_load_verify_maxinflight)
  cv_wait(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
 spa->spa_load_verify_ios++;
 mutex_exit(&spa->spa_scrub_lock);

 zio_nowait(zio_read(rio, spa, bp, abd_alloc_for_io(size, B_FALSE), size,
     spa_load_verify_done, rio->io_private, ZIO_PRIORITY_SCRUB,
     ZIO_FLAG_SPECULATIVE | ZIO_FLAG_CANFAIL |
     ZIO_FLAG_SCRUB | ZIO_FLAG_RAW, zb));
 return (0);
}
