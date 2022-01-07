
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstat {int dummy; } ;
struct cam_iosched_softc {int write_queue; int trim_queue; int bio_queue; } ;


 int bioq_flush (int *,struct devstat*,int) ;
 scalar_t__ do_dynamic_iosched ;

void
cam_iosched_flush(struct cam_iosched_softc *isc, struct devstat *stp, int err)
{
 bioq_flush(&isc->bio_queue, stp, err);
 bioq_flush(&isc->trim_queue, stp, err);




}
