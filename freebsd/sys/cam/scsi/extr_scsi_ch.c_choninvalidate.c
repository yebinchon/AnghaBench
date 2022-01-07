
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_softc {int dev; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CH_FLAG_INVALID ;
 int chasync ;
 int chdevgonecb ;
 int destroy_dev_sched_cb (int ,int ,struct cam_periph*) ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
choninvalidate(struct cam_periph *periph)
{
 struct ch_softc *softc;

 softc = (struct ch_softc *)periph->softc;




 xpt_register_async(0, chasync, periph, periph->path);

 softc->flags |= CH_FLAG_INVALID;





 destroy_dev_sched_cb(softc->dev, chdevgonecb, periph);
}
