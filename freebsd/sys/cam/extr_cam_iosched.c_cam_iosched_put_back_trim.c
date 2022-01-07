
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int total; int queued; } ;
struct cam_iosched_softc {scalar_t__ queued_trims; TYPE_1__ trim_stats; int last_trim_tick; int trim_queue; } ;
struct bio {int dummy; } ;


 int bioq_insert_head (int *,struct bio*) ;
 int ticks ;

void
cam_iosched_put_back_trim(struct cam_iosched_softc *isc, struct bio *bp)
{
 bioq_insert_head(&isc->trim_queue, bp);
 if (isc->queued_trims == 0)
  isc->last_trim_tick = ticks;
 isc->queued_trims++;





}
