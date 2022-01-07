
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {int nvidia_head; TYPE_1__ drm_crtc; } ;
struct dc_softc {TYPE_2__ tegra_crtc; } ;


 int DC_CMD_INT_STATUS ;
 int RD4 (struct dc_softc*,int ) ;
 int VBLANK_INT ;
 int WR4 (struct dc_softc*,int ,int) ;
 int dc_finish_page_flip (struct dc_softc*) ;
 int drm_handle_vblank (int ,int ) ;

__attribute__((used)) static void
dc_intr(void *arg)
{
 struct dc_softc *sc;
 uint32_t status;

 sc = arg;


 status = RD4(sc, DC_CMD_INT_STATUS);
 WR4(sc, DC_CMD_INT_STATUS, status);
 if (status & VBLANK_INT) {
  drm_handle_vblank(sc->tegra_crtc.drm_crtc.dev,
      sc->tegra_crtc.nvidia_head);
  dc_finish_page_flip(sc);
 }
}
