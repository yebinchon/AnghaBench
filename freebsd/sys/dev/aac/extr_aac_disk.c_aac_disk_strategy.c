
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio {scalar_t__ bio_bcount; scalar_t__ bio_resid; int bio_error; int bio_flags; TYPE_2__* bio_disk; } ;
struct aac_disk {TYPE_1__* ad_controller; } ;
struct TYPE_4__ {scalar_t__ d_drv1; } ;
struct TYPE_3__ {int aac_io_lock; } ;


 int BIO_ERROR ;
 int EINVAL ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int aac_submit_bio (struct bio*) ;
 int biodone (struct bio*) ;
 int fwprintf (int *,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aac_disk_strategy(struct bio *bp)
{
 struct aac_disk *sc;

 sc = (struct aac_disk *)bp->bio_disk->d_drv1;
 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");


 if (sc == ((void*)0)) {
  bp->bio_flags |= BIO_ERROR;
  bp->bio_error = EINVAL;
  biodone(bp);
  return;
 }


 if (bp->bio_bcount == 0) {
  bp->bio_resid = bp->bio_bcount;
  biodone(bp);
  return;
 }




 mtx_lock(&sc->ad_controller->aac_io_lock);
 aac_submit_bio(bp);
 mtx_unlock(&sc->ad_controller->aac_io_lock);
}
