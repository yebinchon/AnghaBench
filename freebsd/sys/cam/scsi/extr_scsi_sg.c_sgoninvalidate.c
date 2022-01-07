
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_softc {int dev; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int SG_FLAG_INVALID ;
 int destroy_dev_sched_cb (int ,int ,struct cam_periph*) ;
 int sgasync ;
 int sgdevgonecb ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
sgoninvalidate(struct cam_periph *periph)
{
 struct sg_softc *softc;

 softc = (struct sg_softc *)periph->softc;




 xpt_register_async(0, sgasync, periph, periph->path);

 softc->flags |= SG_FLAG_INVALID;





 destroy_dev_sched_cb(softc->dev, sgdevgonecb, periph);







}
