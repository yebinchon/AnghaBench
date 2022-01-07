
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int queued; int in; } ;
struct TYPE_5__ {int queued; int in; } ;
struct TYPE_4__ {int queued; int in; } ;
struct cam_iosched_softc {scalar_t__ trim_ticks; scalar_t__ queued_trims; TYPE_3__ write_stats; TYPE_2__ read_stats; int bio_queue; int write_queue; TYPE_1__ trim_stats; void* last_trim_tick; int trim_queue; } ;
struct bio {scalar_t__ bio_cmd; } ;


 scalar_t__ BIO_DELETE ;
 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int bioq_disksort (int *,struct bio*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 scalar_t__ cam_iosched_sort_queue (struct cam_iosched_softc*) ;
 scalar_t__ do_dynamic_iosched ;
 int iosched_debug ;
 int printf (char*,struct bio*,scalar_t__) ;
 void* ticks ;

void
cam_iosched_queue_work(struct cam_iosched_softc *isc, struct bio *bp)
{






 if (bp->bio_cmd == BIO_FLUSH && isc->trim_ticks > 0)
  isc->last_trim_tick = ticks - isc->trim_ticks - 1;





 if (bp->bio_cmd == BIO_DELETE) {
  bioq_insert_tail(&isc->trim_queue, bp);
  if (isc->queued_trims == 0)
   isc->last_trim_tick = ticks;
  isc->queued_trims++;




 }
 else {
  if (cam_iosched_sort_queue(isc))
   bioq_disksort(&isc->bio_queue, bp);
  else
   bioq_insert_tail(&isc->bio_queue, bp);
 }
}
