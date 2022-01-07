
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hdmi_softc {int dev; int audio_chans; } ;
struct hdmi_audio_infoframe {int channels; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int AUDIO_INFOFRAME_CTRL_ENABLE ;
 int HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL ;
 int HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER ;
 int HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH ;
 int HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW ;
 int WR4 (struct hdmi_softc*,int ,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ hdmi_audio_infoframe_init (struct hdmi_audio_infoframe*) ;
 scalar_t__ hdmi_audio_infoframe_pack (struct hdmi_audio_infoframe*,int*,int) ;

__attribute__((used)) static void
audio_setup_infoframe(struct hdmi_softc *sc)
{
 struct hdmi_audio_infoframe frame;
 uint8_t buf[14], *hdr, *pb;
 ssize_t rv;


 rv = hdmi_audio_infoframe_init(&frame);
 frame.channels = sc->audio_chans;
 rv = hdmi_audio_infoframe_pack(&frame, buf, sizeof(buf));
 if (rv < 0) {
  device_printf(sc->dev, "Cannot pack audio infoframe\n");
  return;
 }
 hdr = buf + 0;
 pb = buf + 3;
 WR4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_HEADER,
     (hdr[2] << 16) | (hdr[1] << 8) | (hdr[0] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_LOW,
     (pb[3] << 24) |(pb[2] << 16) | (pb[1] << 8) | (pb[0] << 0));
 WR4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_SUBPACK0_HIGH,
     (pb[5] << 8) | (pb[4] << 0));

 WR4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL,
    AUDIO_INFOFRAME_CTRL_ENABLE);
}
