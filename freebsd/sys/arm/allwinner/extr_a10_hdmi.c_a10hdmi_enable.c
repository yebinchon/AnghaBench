
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10hdmi_softc {int dummy; } ;
typedef int device_t ;


 int HDMI_READ (struct a10hdmi_softc*,int ) ;
 int HDMI_VID_CTRL ;
 int HDMI_WRITE (struct a10hdmi_softc*,int ,int ) ;
 int VID_CTRL_VIDEO_EN ;
 struct a10hdmi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
a10hdmi_enable(device_t dev, int onoff)
{
 struct a10hdmi_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);


 val = HDMI_READ(sc, HDMI_VID_CTRL);
 if (onoff)
  val |= VID_CTRL_VIDEO_EN;
 else
  val &= ~VID_CTRL_VIDEO_EN;
 HDMI_WRITE(sc, HDMI_VID_CTRL, val);

 return (0);
}
