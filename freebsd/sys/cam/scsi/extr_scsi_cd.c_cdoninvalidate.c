
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cd_softc {int disk; int bio_queue; int flags; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int CD_FLAG_INVALID ;
 int ENXIO ;
 int bioq_flush (int *,int *,int ) ;
 int cdasync ;
 int disk_gone (int ) ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
cdoninvalidate(struct cam_periph *periph)
{
 struct cd_softc *softc;

 softc = (struct cd_softc *)periph->softc;




 xpt_register_async(0, cdasync, periph, periph->path);

 softc->flags |= CD_FLAG_INVALID;






 bioq_flush(&softc->bio_queue, ((void*)0), ENXIO);

 disk_gone(softc->disk);
}
