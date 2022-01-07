
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_softc {int hdmi_mode; } ;


 int AUDIO_INFOFRAME_CTRL_ENABLE ;
 int GENERIC_CTRL_AUDIO ;
 int HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL ;
 int HDMI_NV_PDISP_HDMI_GENERIC_CTRL ;
 int RD4 (struct hdmi_softc*,int ) ;
 int WR4 (struct hdmi_softc*,int ,int ) ;
 int audio_disable (struct hdmi_softc*) ;

__attribute__((used)) static void
audio_enable(struct hdmi_softc *sc) {
 uint32_t val;

 if (!sc->hdmi_mode)
  audio_disable(sc);


 val = RD4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL);
 val |= AUDIO_INFOFRAME_CTRL_ENABLE;
 WR4(sc, HDMI_NV_PDISP_HDMI_AUDIO_INFOFRAME_CTRL, val);


 val = RD4(sc, HDMI_NV_PDISP_HDMI_GENERIC_CTRL);
 val |= GENERIC_CTRL_AUDIO;
 WR4(sc, HDMI_NV_PDISP_HDMI_GENERIC_CTRL, val);
}
