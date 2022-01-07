
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_periph {int path; } ;
struct bio {int bio_length; int bio_completed; int bio_attribute; int bio_data; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {scalar_t__ d_drv1; } ;


 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int xpt_getattr (int ,int ,int ,int ) ;

__attribute__((used)) static int
ndagetattr(struct bio *bp)
{
 int ret;
 struct cam_periph *periph;

 periph = (struct cam_periph *)bp->bio_disk->d_drv1;
 cam_periph_lock(periph);
 ret = xpt_getattr(bp->bio_data, bp->bio_length, bp->bio_attribute,
     periph->path);
 cam_periph_unlock(periph);
 if (ret == 0)
  bp->bio_completed = bp->bio_length;
 return ret;
}
