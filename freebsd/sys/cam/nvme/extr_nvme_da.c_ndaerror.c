
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int u_int32_t ;
struct nda_softc {int errors; int timeouts; } ;
struct cam_periph {scalar_t__ softc; } ;
 int CAM_STATUS_MASK ;

 int cam_periph_error (union ccb*,int ,int ) ;
 struct cam_periph* xpt_path_periph (int ) ;

__attribute__((used)) static int
ndaerror(union ccb *ccb, u_int32_t cam_flags, u_int32_t sense_flags)
{
 struct nda_softc *softc;
 struct cam_periph *periph;

 periph = xpt_path_periph(ccb->ccb_h.path);
 softc = (struct nda_softc *)periph->softc;

 switch (ccb->ccb_h.status & CAM_STATUS_MASK) {
 case 133:



  break;
 case 131:
 case 130:
 case 129:
 case 128:
 case 132:
 case 134:



  break;
 default:
  break;
 }

 return(cam_periph_error(ccb, cam_flags, sense_flags));
}
