
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ v_state; int (* v_read ) (TYPE_1__*,int *,int ,int ,int ) ;int spa; int v_nparity; int v_nchildren; int v_ashift; struct TYPE_16__* v_top; } ;
typedef TYPE_1__ vdev_t ;
struct TYPE_17__ {int rm_cols; int rm_firstdatacol; scalar_t__ rm_missingdata; int rm_missingparity; TYPE_3__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
struct TYPE_18__ {int rc_error; int rc_tried; int rc_skipped; int rc_size; int rc_offset; int rc_data; int rc_devidx; } ;
typedef TYPE_3__ raidz_col_t ;
typedef int off_t ;
typedef int blkptr_t ;
struct TYPE_19__ {int io_txg; } ;


 int ASSERT (int) ;
 int DTL_MISSING ;
 int ECKSUM ;
 int EIO ;
 int ENXIO ;
 int ESTALE ;
 int VDEV_RAIDZ_MAXPARITY ;
 scalar_t__ VDEV_STATE_HEALTHY ;
 scalar_t__ raidz_checksum_verify (int ,int const*,void*,size_t) ;
 int raidz_parity_verify (TYPE_2__*) ;
 int stub1 (TYPE_1__*,int *,int ,int ,int ) ;
 int stub2 (TYPE_1__*,int *,int ,int ,int ) ;
 TYPE_1__* vdev_child (TYPE_1__*,int ) ;
 scalar_t__ vdev_dtl_contains (TYPE_1__*,int ,int ,int) ;
 int vdev_raidz_combrec (int ,TYPE_2__*,int const*,void*,int ,size_t,int,int) ;
 TYPE_2__* vdev_raidz_map_alloc (void*,int ,size_t,int ,int ,int ) ;
 int vdev_raidz_map_free (TYPE_2__*) ;
 int vdev_raidz_reconstruct (TYPE_2__*,int*,int) ;
 TYPE_4__* zio ;

__attribute__((used)) static int
vdev_raidz_read(vdev_t *vd, const blkptr_t *bp, void *data,
    off_t offset, size_t bytes)
{
 vdev_t *tvd = vd->v_top;
 vdev_t *cvd;
 raidz_map_t *rm;
 raidz_col_t *rc;
 int c, error;
 int unexpected_errors;
 int parity_errors;
 int parity_untried;
 int data_errors;
 int total_errors;
 int n;
 int tgts[VDEV_RAIDZ_MAXPARITY];
 int code;

 rc = ((void*)0);
 error = 0;

 rm = vdev_raidz_map_alloc(data, offset, bytes, tvd->v_ashift,
     vd->v_nchildren, vd->v_nparity);





 for (c = rm->rm_cols - 1; c >= 0; c--) {
  rc = &rm->rm_col[c];
  cvd = vdev_child(vd, rc->rc_devidx);
  if (cvd == ((void*)0) || cvd->v_state != VDEV_STATE_HEALTHY) {
   if (c >= rm->rm_firstdatacol)
    rm->rm_missingdata++;
   else
    rm->rm_missingparity++;
   rc->rc_error = ENXIO;
   rc->rc_tried = 1;
   rc->rc_skipped = 1;
   continue;
  }
  if (c >= rm->rm_firstdatacol || rm->rm_missingdata > 0) {
   rc->rc_error = cvd->v_read(cvd, ((void*)0), rc->rc_data,
       rc->rc_offset, rc->rc_size);
   rc->rc_tried = 1;
   rc->rc_skipped = 0;
  }
 }

reconstruct:
 unexpected_errors = 0;
 parity_errors = 0;
 parity_untried = 0;
 data_errors = 0;
 total_errors = 0;

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
 if (total_errors <= rm->rm_firstdatacol - parity_untried) {
  if (data_errors == 0) {
   if (raidz_checksum_verify(vd->spa, bp, data, bytes) == 0) {
    if (parity_errors + parity_untried <
        rm->rm_firstdatacol) {
     n = raidz_parity_verify(rm);
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

   if (raidz_checksum_verify(vd->spa, bp, data, bytes) == 0) {
    if (parity_errors < rm->rm_firstdatacol - n) {
     n = raidz_parity_verify(rm);
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

 n = 0;
 for (c = 0; c < rm->rm_cols; c++) {
  rc = &rm->rm_col[c];

  if (rc->rc_tried)
   continue;

  cvd = vdev_child(vd, rc->rc_devidx);
  ASSERT(cvd != ((void*)0));
  rc->rc_error = cvd->v_read(cvd, ((void*)0),
      rc->rc_data, rc->rc_offset, rc->rc_size);
  if (rc->rc_error == 0)
   n++;
  rc->rc_tried = 1;
  rc->rc_skipped = 0;
 }




 if (n > 0)
  goto reconstruct;
 if (total_errors > rm->rm_firstdatacol) {
  error = EIO;
 } else if (total_errors < rm->rm_firstdatacol &&
     (code = vdev_raidz_combrec(vd->spa, rm, bp, data, offset, bytes,
      total_errors, data_errors)) != 0) {





  if (code != (1 << rm->rm_firstdatacol) - 1)
   (void) raidz_parity_verify(rm);
 } else {
  error = ECKSUM;
 }

done:
 vdev_raidz_map_free(rm);

 return (error);
}
