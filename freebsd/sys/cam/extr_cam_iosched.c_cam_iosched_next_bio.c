
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending; int total; int queued; int state_flags; } ;
struct cam_iosched_softc {TYPE_1__ read_stats; int bio_queue; } ;
struct bio {scalar_t__ bio_cmd; } ;


 scalar_t__ BIO_READ ;
 int IOP_RATE_LIMITED ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 struct bio* cam_iosched_get_trim (struct cam_iosched_softc*) ;
 struct bio* cam_iosched_get_write (struct cam_iosched_softc*) ;
 scalar_t__ cam_iosched_limiter_iop (TYPE_1__*,struct bio*) ;
 scalar_t__ do_dynamic_iosched ;
 int iosched_debug ;
 int printf (char*,struct bio*,...) ;

struct bio *
cam_iosched_next_bio(struct cam_iosched_softc *isc)
{
 struct bio *bp;
 if ((bp = cam_iosched_get_trim(isc)) != ((void*)0))
  return bp;
 if ((bp = bioq_first(&isc->bio_queue)) == ((void*)0))
  return ((void*)0);
 bioq_remove(&isc->bio_queue, bp);
 return bp;
}
