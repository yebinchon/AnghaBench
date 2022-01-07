
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct pass_softc {int dummy; } ;
struct cam_periph {scalar_t__ softc; } ;


 int cam_periph_error (union ccb*,int ,int ) ;
 struct cam_periph* xpt_path_periph (int ) ;

__attribute__((used)) static int
passerror(union ccb *ccb, u_int32_t cam_flags, u_int32_t sense_flags)
{
 struct cam_periph *periph;
 struct pass_softc *softc;

 periph = xpt_path_periph(ccb->ccb_h.path);
 softc = (struct pass_softc *)periph->softc;

 return(cam_periph_error(ccb, cam_flags, sense_flags));
}
