
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_softc {int path; struct cam_periph* periph; } ;
struct cam_periph {int path; struct targ_softc* softc; } ;
typedef int cam_status ;


 int CAM_REQ_CMP ;

__attribute__((used)) static cam_status
targctor(struct cam_periph *periph, void *arg)
{
 struct targ_softc *softc;


 softc = (struct targ_softc *)arg;
 periph->softc = softc;
 softc->periph = periph;
 softc->path = periph->path;
 return (CAM_REQ_CMP);
}
