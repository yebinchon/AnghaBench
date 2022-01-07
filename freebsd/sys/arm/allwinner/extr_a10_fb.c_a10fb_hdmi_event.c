
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct videomode {int flags; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ hskew; int vdisplay; int hdisplay; } ;
struct edid_info {struct videomode* edid_preferred_mode; } ;
struct a10fb_softc {int dev; } ;
typedef int device_t ;


 int DELAY (int ) ;
 int FB_DEFAULT_H ;
 int FB_DEFAULT_REF ;
 int FB_DEFAULT_W ;
 int HDMI_ENABLE (int ,int) ;
 int HDMI_ENABLE_DELAY ;
 int HDMI_GET_EDID (int ,int **,scalar_t__*) ;
 int HDMI_SET_VIDEOMODE (int ,struct videomode*) ;
 int VID_HSKEW ;
 int a10fb_configure (struct a10fb_softc*,struct videomode const*) ;
 int a10fb_enable_tcon (struct a10fb_softc*,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,...) ;
 int edid_parse (int *,struct edid_info*) ;
 int edid_print (struct edid_info*) ;
 struct videomode* pick_mode_by_ref (int ,int ,int ) ;

__attribute__((used)) static void
a10fb_hdmi_event(void *arg, device_t hdmi_dev)
{
 const struct videomode *mode;
 struct videomode hdmi_mode;
 struct a10fb_softc *sc;
 struct edid_info ei;
 uint8_t *edid;
 uint32_t edid_len;
 int error;

 sc = arg;
 edid = ((void*)0);
 edid_len = 0;
 mode = ((void*)0);

 error = HDMI_GET_EDID(hdmi_dev, &edid, &edid_len);
 if (error != 0) {
  device_printf(sc->dev, "failed to get EDID: %d\n", error);
 } else {
  error = edid_parse(edid, &ei);
  if (error != 0) {
   device_printf(sc->dev, "failed to parse EDID: %d\n",
       error);
  } else {
   if (bootverbose)
    edid_print(&ei);
   mode = ei.edid_preferred_mode;
  }
 }


 if (mode == ((void*)0))
  mode = pick_mode_by_ref(FB_DEFAULT_W, FB_DEFAULT_H,
      FB_DEFAULT_REF);

 if (mode == ((void*)0)) {
  device_printf(sc->dev, "failed to find usable video mode\n");
  return;
 }

 if (bootverbose)
  device_printf(sc->dev, "using %dx%d\n",
      mode->hdisplay, mode->vdisplay);


 HDMI_ENABLE(hdmi_dev, 0);


 a10fb_enable_tcon(sc, 0);


 error = a10fb_configure(sc, mode);
 if (error != 0) {
  device_printf(sc->dev, "failed to configure FB: %d\n", error);
  return;
 }

 hdmi_mode = *mode;
 hdmi_mode.hskew = mode->hsync_end - mode->hsync_start;
 hdmi_mode.flags |= VID_HSKEW;
 HDMI_SET_VIDEOMODE(hdmi_dev, &hdmi_mode);


 a10fb_enable_tcon(sc, 1);

 DELAY(HDMI_ENABLE_DELAY);


 HDMI_ENABLE(hdmi_dev, 1);
}
