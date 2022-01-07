
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int total; int queued; } ;
struct cam_iosched_softc {TYPE_1__ trim_stats; int last_trim_tick; int queued_trims; int trim_queue; } ;
struct bio {int dummy; } ;


 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int ticks ;

struct bio *
cam_iosched_next_trim(struct cam_iosched_softc *isc)
{
 struct bio *bp;

 bp = bioq_first(&isc->trim_queue);
 if (bp == ((void*)0))
  return ((void*)0);
 bioq_remove(&isc->trim_queue, bp);
 isc->queued_trims--;
 isc->last_trim_tick = ticks;





 return bp;
}
