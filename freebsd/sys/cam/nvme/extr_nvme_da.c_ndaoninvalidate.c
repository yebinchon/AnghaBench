
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nda_softc {int disk; int cam_iosched; int invalidations; } ;
struct cam_periph {int path; scalar_t__ softc; } ;


 int ENXIO ;
 int cam_iosched_flush (int ,int *,int ) ;
 int disk_gone (int ) ;
 int ndaasync ;
 int xpt_register_async (int ,int ,struct cam_periph*,int ) ;

__attribute__((used)) static void
ndaoninvalidate(struct cam_periph *periph)
{
 struct nda_softc *softc;

 softc = (struct nda_softc *)periph->softc;




 xpt_register_async(0, ndaasync, periph, periph->path);
 cam_iosched_flush(softc->cam_iosched, ((void*)0), ENXIO);

 disk_gone(softc->disk);
}
