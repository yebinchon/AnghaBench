
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_softc {int dummy; } ;
typedef int device_t ;


 int DC_DISP_DISP_WIN_OPTIONS ;
 int HDMI_ENABLE ;
 int RD4 (struct dc_softc*,int ) ;
 int WR4 (struct dc_softc*,int ,int ) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
dc_hdmi_enable(device_t dev, bool enable)
{
 struct dc_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 val = RD4(sc, DC_DISP_DISP_WIN_OPTIONS);
 if (enable)
  val |= HDMI_ENABLE;
 else
  val &= ~HDMI_ENABLE;
 WR4(sc, DC_DISP_DISP_WIN_OPTIONS, val);

}
