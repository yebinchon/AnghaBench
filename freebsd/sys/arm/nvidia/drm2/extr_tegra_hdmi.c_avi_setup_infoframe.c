
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hdmi_softc {int dev; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_display_mode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int AVI_INFOFRAME_CTRL_ENABLE ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH ;
 int HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW ;
 int WR4 (struct hdmi_softc*,int ,int) ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,struct drm_display_mode*) ;
 scalar_t__ hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int*,int) ;

__attribute__((used)) static void
avi_setup_infoframe(struct hdmi_softc *sc, struct drm_display_mode *mode)
{
 struct hdmi_avi_infoframe frame;
 uint8_t buf[17], *hdr, *pb;;
 ssize_t rv;

 rv = drm_hdmi_avi_infoframe_from_display_mode(&frame, mode);
 if (rv < 0) {
  device_printf(sc->dev, "Cannot setup AVI infoframe: %zd\n", rv);
  return;
 }
 rv = hdmi_avi_infoframe_pack(&frame, buf, sizeof(buf));
 if (rv < 0) {
  device_printf(sc->dev, "Cannot pack AVI infoframe: %zd\n", rv);
  return;
 }
 hdr = buf + 0;
 pb = buf + 3;
 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_HEADER,
     (hdr[2] << 16) | (hdr[1] << 8) | (hdr[0] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_LOW,
     (pb[3] << 24) |(pb[2] << 16) | (pb[1] << 8) | (pb[0] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK0_HIGH,
     (pb[6] << 16) | (pb[5] << 8) | (pb[4] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_LOW,
     (pb[10] << 24) |(pb[9] << 16) | (pb[8] << 8) | (pb[7] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_SUBPACK1_HIGH,
     (pb[13] << 16) | (pb[12] << 8) | (pb[11] << 0));

 WR4(sc, HDMI_NV_PDISP_HDMI_AVI_INFOFRAME_CTRL,
    AVI_INFOFRAME_CTRL_ENABLE);
}
