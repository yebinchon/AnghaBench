
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct a10hdmi_softc {scalar_t__ has_audio; scalar_t__ has_hdmi; int * edid; } ;
typedef int device_t ;


 int CTRL_DDC_EN ;
 int CTRL_DDC_SWRST ;
 int DDC_CLOCK ;
 int DDC_CLOCK_M ;
 int DDC_CLOCK_N ;
 int DDC_CTRL ;
 int DDC_CTRL_LINE ;
 int DDC_FIFO_CTRL ;
 int DDC_LINE_SCL_ENABLE ;
 int DDC_LINE_SDA_ENABLE ;
 int DDC_READ_RETRY ;
 int DELAY (int ) ;
 int ENXIO ;
 int HDMI_READ (struct a10hdmi_softc*,int ) ;
 int HDMI_WRITE (struct a10hdmi_softc*,int ,int) ;
 int SWRST_DELAY ;
 int a10hdmi_ddc_read (struct a10hdmi_softc*,int ,int *) ;
 int a10hdmi_detect_hdmi (struct a10hdmi_softc*,scalar_t__*,scalar_t__*) ;
 struct a10hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
a10hdmi_get_edid(device_t dev, uint8_t **edid, uint32_t *edid_len)
{
 struct a10hdmi_softc *sc;
 int error, retry;

 sc = device_get_softc(dev);
 retry = DDC_READ_RETRY;

 while (--retry > 0) {

  HDMI_WRITE(sc, DDC_FIFO_CTRL, 0);
  HDMI_WRITE(sc, DDC_CTRL, CTRL_DDC_EN | CTRL_DDC_SWRST);
  DELAY(SWRST_DELAY);
  if (HDMI_READ(sc, DDC_CTRL) & CTRL_DDC_SWRST) {
   device_printf(dev, "DDC software reset failed\n");
   return (ENXIO);
  }


  HDMI_WRITE(sc, DDC_CLOCK, DDC_CLOCK_M | DDC_CLOCK_N);


  HDMI_WRITE(sc, DDC_CTRL_LINE,
      DDC_LINE_SCL_ENABLE | DDC_LINE_SDA_ENABLE);


  error = a10hdmi_ddc_read(sc, 0, sc->edid);
  if (error == 0) {
   *edid = sc->edid;
   *edid_len = sizeof(sc->edid);
   break;
  }
 }

 if (error == 0)
  a10hdmi_detect_hdmi(sc, &sc->has_hdmi, &sc->has_audio);
 else
  sc->has_hdmi = sc->has_audio = 0;

 return (error);
}
