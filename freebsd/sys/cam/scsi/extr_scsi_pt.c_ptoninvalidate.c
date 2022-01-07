
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_softc {int bio_queue; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int ENXIO ;
 int PT_FLAG_DEVICE_INVALID ;
 int bioq_flush (int *,int *,int ) ;
 int ptasync ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
ptoninvalidate(struct cam_periph *periph)
{
 struct pt_softc *softc;

 softc = (struct pt_softc *)periph->softc;




 xpt_register_async(0, ptasync, periph, periph->path);

 softc->flags |= PT_FLAG_DEVICE_INVALID;






 bioq_flush(&softc->bio_queue, ((void*)0), ENXIO);
}
