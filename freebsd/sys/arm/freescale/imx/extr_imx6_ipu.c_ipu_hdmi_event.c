
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct videomode {int dummy; } ;
struct ipu_softc {int * sc_mode; int sc_dev; } ;
struct edid_info {int dummy; } ;
typedef int device_t ;


 scalar_t__ HDMI_GET_EDID (int ,int **,scalar_t__*) ;
 int HDMI_SET_VIDEOMODE (int ,int *) ;
 int device_printf (int ,char*) ;
 scalar_t__ edid_parse (int *,struct edid_info*) ;
 int edid_print (struct edid_info*) ;
 int ipu_init (struct ipu_softc*) ;
 int mode1024x768 ;

__attribute__((used)) static void
ipu_hdmi_event(void *arg, device_t hdmi_dev)
{
 struct ipu_softc *sc;
 uint8_t *edid;
 uint32_t edid_len;



 const struct videomode *videomode;

 sc = arg;

 edid = ((void*)0);
 edid_len = 0;
 if (HDMI_GET_EDID(hdmi_dev, &edid, &edid_len) != 0) {
  device_printf(sc->sc_dev, "failed to get EDID info from HDMI framer\n");
 }

 videomode = ((void*)0);
 sc->sc_mode = &mode1024x768;
 ipu_init(sc);

 HDMI_SET_VIDEOMODE(hdmi_dev, sc->sc_mode);
}
