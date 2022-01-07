
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ io_type; scalar_t__ io_error; int io_flags; int io_spa; int io_priority; int * io_bp; TYPE_4__* io_vsd; TYPE_3__* io_vd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_22__ {int zbc_injected; scalar_t__ zbc_has_cksum; } ;
typedef TYPE_2__ zio_bad_cksum_t ;
struct TYPE_23__ {struct TYPE_23__** vdev_child; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_24__ {scalar_t__ rm_missingparity; scalar_t__ rm_firstdatacol; scalar_t__ rm_missingdata; scalar_t__ rm_cols; TYPE_5__* rm_col; int rm_ecksuminjected; } ;
typedef TYPE_4__ raidz_map_t ;
struct TYPE_25__ {scalar_t__ rc_error; size_t rc_devidx; int rc_size; int rc_abd; int rc_offset; scalar_t__ rc_tried; int rc_skipped; } ;
typedef TYPE_5__ raidz_col_t ;


 int ASSERT (int) ;
 scalar_t__ ECKSUM ;
 scalar_t__ SET_ERROR (scalar_t__) ;
 int VDEV_RAIDZ_MAXPARITY ;
 int ZIO_FLAG_IO_REPAIR ;
 int ZIO_FLAG_RESILVER ;
 int ZIO_FLAG_SELF_HEAL ;
 int ZIO_FLAG_SPECULATIVE ;
 int ZIO_PRIORITY_ASYNC_WRITE ;
 scalar_t__ ZIO_TYPE_FREE ;
 scalar_t__ ZIO_TYPE_READ ;
 scalar_t__ ZIO_TYPE_WRITE ;
 int atomic_inc_64 (int *) ;
 scalar_t__ raidz_checksum_verify (TYPE_1__*) ;
 int * raidz_corrected ;
 int raidz_parity_verify (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ spa_writeable (int ) ;
 int * vdev_raidz_child_done ;
 int vdev_raidz_combrec (TYPE_1__*,int,int) ;
 int vdev_raidz_reconstruct (TYPE_4__*,int*,int) ;
 void* vdev_raidz_worst_error (TYPE_4__*) ;
 int zfs_ereport_start_checksum (int ,TYPE_3__*,TYPE_1__*,int ,int ,void*,TYPE_2__*) ;
 int zio_checksum_verified (TYPE_1__*) ;
 int zio_nowait (int ) ;
 int zio_vdev_child_io (TYPE_1__*,int *,TYPE_3__*,int ,int ,int ,scalar_t__,int ,int,int *,TYPE_5__*) ;
 int zio_vdev_io_redone (TYPE_1__*) ;

__attribute__((used)) static void
vdev_raidz_io_done(zio_t *zio)
{
 vdev_t *vd = zio->io_vd;
 vdev_t *cvd;
 raidz_map_t *rm = zio->io_vsd;
 raidz_col_t *rc;
 int unexpected_errors = 0;
 int parity_errors = 0;
 int parity_untried = 0;
 int data_errors = 0;
 int total_errors = 0;
 int n, c;
 int tgts[VDEV_RAIDZ_MAXPARITY];
 int code;

 ASSERT(zio->io_bp != ((void*)0));

 ASSERT(rm->rm_missingparity <= rm->rm_firstdatacol);
 ASSERT(rm->rm_missingdata <= rm->rm_cols - rm->rm_firstdatacol);

 for (c = 0; c < rm->rm_cols; c++) {
  rc = &rm->rm_col[c];

  if (rc->rc_error) {
   ASSERT(rc->rc_error != ECKSUM);

   if (c < rm->rm_firstdatacol)
    parity_errors++;
   else
    data_errors++;

   if (!rc->rc_skipped)
    unexpected_errors++;

   total_errors++;
  } else if (c < rm->rm_firstdatacol && !rc->rc_tried) {
   parity_untried++;
  }
 }

 if (zio->io_type == ZIO_TYPE_WRITE) {
  if (total_errors > rm->rm_firstdatacol)
   zio->io_error = vdev_raidz_worst_error(rm);

  return;
 } else if (zio->io_type == ZIO_TYPE_FREE) {
  return;
 }

 ASSERT(zio->io_type == ZIO_TYPE_READ);
 if (total_errors <= rm->rm_firstdatacol - parity_untried) {
  if (data_errors == 0) {
   if (raidz_checksum_verify(zio) == 0) {
    if (parity_errors + parity_untried <
        rm->rm_firstdatacol ||
        (zio->io_flags & ZIO_FLAG_RESILVER)) {
     n = raidz_parity_verify(zio, rm);
     unexpected_errors += n;
     ASSERT(parity_errors + n <=
         rm->rm_firstdatacol);
    }
    goto done;
   }
  } else {







   ASSERT(parity_untried == 0);
   ASSERT(parity_errors < rm->rm_firstdatacol);




   n = 0;
   for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
    rc = &rm->rm_col[c];
    if (rc->rc_error != 0) {
     ASSERT(n < VDEV_RAIDZ_MAXPARITY);
     tgts[n++] = c;
    }
   }

   ASSERT(rm->rm_firstdatacol >= n);

   code = vdev_raidz_reconstruct(rm, tgts, n);

   if (raidz_checksum_verify(zio) == 0) {
    atomic_inc_64(&raidz_corrected[code]);
    if (parity_errors < rm->rm_firstdatacol - n ||
        (zio->io_flags & ZIO_FLAG_RESILVER)) {
     n = raidz_parity_verify(zio, rm);
     unexpected_errors += n;
     ASSERT(parity_errors + n <=
         rm->rm_firstdatacol);
    }

    goto done;
   }
  }
 }
 unexpected_errors = 1;
 rm->rm_missingdata = 0;
 rm->rm_missingparity = 0;

 for (c = 0; c < rm->rm_cols; c++) {
  if (rm->rm_col[c].rc_tried)
   continue;

  zio_vdev_io_redone(zio);
  do {
   rc = &rm->rm_col[c];
   if (rc->rc_tried)
    continue;
   zio_nowait(zio_vdev_child_io(zio, ((void*)0),
       vd->vdev_child[rc->rc_devidx],
       rc->rc_offset, rc->rc_abd, rc->rc_size,
       zio->io_type, zio->io_priority, 0,
       vdev_raidz_child_done, rc));
  } while (++c < rm->rm_cols);

  return;
 }
 if (total_errors > rm->rm_firstdatacol) {
  zio->io_error = vdev_raidz_worst_error(rm);

 } else if (total_errors < rm->rm_firstdatacol &&
     (code = vdev_raidz_combrec(zio, total_errors, data_errors)) != 0) {





  if (code != (1 << rm->rm_firstdatacol) - 1)
   (void) raidz_parity_verify(zio, rm);
 } else {
  zio->io_error = SET_ERROR(ECKSUM);

  if (!(zio->io_flags & ZIO_FLAG_SPECULATIVE)) {
   for (c = 0; c < rm->rm_cols; c++) {
    rc = &rm->rm_col[c];
    if (rc->rc_error == 0) {
     zio_bad_cksum_t zbc;
     zbc.zbc_has_cksum = 0;
     zbc.zbc_injected =
         rm->rm_ecksuminjected;

     zfs_ereport_start_checksum(
         zio->io_spa,
         vd->vdev_child[rc->rc_devidx],
         zio, rc->rc_offset, rc->rc_size,
         (void *)(uintptr_t)c, &zbc);
    }
   }
  }
 }

done:
 zio_checksum_verified(zio);

 if (zio->io_error == 0 && spa_writeable(zio->io_spa) &&
     (unexpected_errors || (zio->io_flags & ZIO_FLAG_RESILVER))) {



  for (c = 0; c < rm->rm_cols; c++) {
   rc = &rm->rm_col[c];
   cvd = vd->vdev_child[rc->rc_devidx];

   if (rc->rc_error == 0)
    continue;

   zio_nowait(zio_vdev_child_io(zio, ((void*)0), cvd,
       rc->rc_offset, rc->rc_abd, rc->rc_size,
       ZIO_TYPE_WRITE, ZIO_PRIORITY_ASYNC_WRITE,
       ZIO_FLAG_IO_REPAIR | (unexpected_errors ?
       ZIO_FLAG_SELF_HEAL : 0), ((void*)0), ((void*)0)));
  }
 }
}
