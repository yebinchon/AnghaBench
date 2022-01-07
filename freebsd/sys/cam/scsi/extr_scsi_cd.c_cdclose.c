
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct disk {scalar_t__ d_drv1; } ;
struct cd_softc {int flags; TYPE_2__* disk; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct TYPE_4__ {TYPE_1__* d_devstat; } ;
struct TYPE_3__ {int flags; } ;


 int CAM_DEBUG (int ,int,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_DEBUG_TRACE ;
 int CD_FLAG_DISC_REMOVABLE ;
 int CD_FLAG_VALID_MEDIA ;
 int CD_FLAG_VALID_TOC ;
 int DEVSTAT_BS_UNAVAILABLE ;
 int PRIBIO ;
 int PR_ALLOW ;
 scalar_t__ cam_periph_hold (struct cam_periph*,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cam_periph_release_locked (struct cam_periph*) ;
 int cam_periph_unhold (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int cdprevent (struct cam_periph*,int ) ;

__attribute__((used)) static int
cdclose(struct disk *dp)
{
 struct cam_periph *periph;
 struct cd_softc *softc;

 periph = (struct cam_periph *)dp->d_drv1;
 softc = (struct cd_softc *)periph->softc;

 cam_periph_lock(periph);
 if (cam_periph_hold(periph, PRIBIO) != 0) {
  cam_periph_unlock(periph);
  cam_periph_release(periph);
  return (0);
 }

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
     ("cdclose\n"));

 if ((softc->flags & CD_FLAG_DISC_REMOVABLE) != 0)
  cdprevent(periph, PR_ALLOW);





 softc->disk->d_devstat->flags |= DEVSTAT_BS_UNAVAILABLE;




 softc->flags &= ~(CD_FLAG_VALID_MEDIA|CD_FLAG_VALID_TOC);

 cam_periph_unhold(periph);
 cam_periph_release_locked(periph);
 cam_periph_unlock(periph);

 return (0);
}
