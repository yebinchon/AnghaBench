
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pass_softc {int dev; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int PASS_FLAG_INVALID ;
 int destroy_dev_sched_cb (int ,int ,struct cam_periph*) ;
 int passasync ;
 int passdevgonecb ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
passoninvalidate(struct cam_periph *periph)
{
 struct pass_softc *softc;

 softc = (struct pass_softc *)periph->softc;




 xpt_register_async(0, passasync, periph, periph->path);

 softc->flags |= PASS_FLAG_INVALID;





 destroy_dev_sched_cb(softc->dev, passdevgonecb, periph);
}
