
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef int uint32_t ;
struct enc_softc {int dummy; } ;
struct cam_periph {scalar_t__ softc; } ;


 int cam_periph_error (union ccb*,int ,int ) ;
 struct cam_periph* xpt_path_periph (int ) ;

int
enc_error(union ccb *ccb, uint32_t cflags, uint32_t sflags)
{
 struct enc_softc *softc;
 struct cam_periph *periph;

 periph = xpt_path_periph(ccb->ccb_h.path);
 softc = (struct enc_softc *)periph->softc;

 return (cam_periph_error(ccb, cflags, sflags));
}
