
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct sg_softc {int device_stats; int maxio; } ;
struct cam_periph_map_info {int dummy; } ;
struct cam_periph {struct sg_softc* softc; } ;
typedef int mapinfo ;


 int CAM_RETRY_SELTO ;
 int SF_RETRY_UA ;
 int bzero (struct cam_periph_map_info*,int) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_mapmem (union ccb*,struct cam_periph_map_info*,int ) ;
 int cam_periph_runccb (union ccb*,int ,int ,int ,int ) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cam_periph_unmapmem (union ccb*,struct cam_periph_map_info*) ;
 int sgerror ;

__attribute__((used)) static int
sgsendccb(struct cam_periph *periph, union ccb *ccb)
{
 struct sg_softc *softc;
 struct cam_periph_map_info mapinfo;
 int error;

 softc = periph->softc;
 bzero(&mapinfo, sizeof(mapinfo));
 cam_periph_unlock(periph);
 error = cam_periph_mapmem(ccb, &mapinfo, softc->maxio);
 cam_periph_lock(periph);
 if (error)
  return (error);

 error = cam_periph_runccb(ccb,
      sgerror,
      CAM_RETRY_SELTO,
      SF_RETRY_UA,
      softc->device_stats);

 cam_periph_unlock(periph);
 cam_periph_unmapmem(ccb, &mapinfo);
 cam_periph_lock(periph);

 return (error);
}
