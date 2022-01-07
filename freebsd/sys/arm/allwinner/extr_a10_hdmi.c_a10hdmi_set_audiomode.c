
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct videomode {int dot_clock; } ;
struct a10hdmi_softc {int has_audio; } ;
typedef int device_t ;


 int AUD_CTRL_EN ;
 int AUD_CTRL_RST ;
 int AUD_FMT_CH (int ) ;
 int CH_STATUS0_FS_FREQ_48 ;
 int CH_STATUS1_WORD_LEN_16 ;
 int HDMI_ADMA_CTRL ;
 int HDMI_ADMA_MODE_DDMA ;
 int HDMI_AUDIO_CHANNELMAP ;
 int HDMI_AUDIO_CHANNELS ;
 int HDMI_AUDIO_CTS (int ,int) ;
 int HDMI_AUDIO_N ;
 int HDMI_AUDIO_RESET_RETRY ;
 int HDMI_AUD_CH_STATUS0 ;
 int HDMI_AUD_CH_STATUS1 ;
 int HDMI_AUD_CTRL ;
 int HDMI_AUD_CTS ;
 int HDMI_AUD_FMT ;
 int HDMI_AUD_N ;
 int HDMI_PCM_CTRL ;
 int HDMI_READ (struct a10hdmi_softc*,int ) ;
 int HDMI_WRITE (struct a10hdmi_softc*,int ,int) ;
 struct a10hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
a10hdmi_set_audiomode(device_t dev, const struct videomode *mode)
{
 struct a10hdmi_softc *sc;
 uint32_t val;
 int retry;

 sc = device_get_softc(dev);


 HDMI_WRITE(sc, HDMI_AUD_CTRL, AUD_CTRL_RST);
 for (retry = HDMI_AUDIO_RESET_RETRY; retry > 0; retry--) {
  val = HDMI_READ(sc, HDMI_AUD_CTRL);
  if ((val & AUD_CTRL_RST) == 0)
   break;
 }
 if (retry == 0) {
  device_printf(dev, "timeout waiting for audio module\n");
  return;
 }

 if (!sc->has_audio)
  return;


 HDMI_WRITE(sc, HDMI_ADMA_CTRL, HDMI_ADMA_MODE_DDMA);


 HDMI_WRITE(sc, HDMI_AUD_FMT, AUD_FMT_CH(HDMI_AUDIO_CHANNELS));


 HDMI_WRITE(sc, HDMI_PCM_CTRL, HDMI_AUDIO_CHANNELMAP);


 HDMI_WRITE(sc, HDMI_AUD_CTS,
     HDMI_AUDIO_CTS(mode->dot_clock, HDMI_AUDIO_N));
 HDMI_WRITE(sc, HDMI_AUD_N, HDMI_AUDIO_N);


 HDMI_WRITE(sc, HDMI_AUD_CH_STATUS0, CH_STATUS0_FS_FREQ_48);
 HDMI_WRITE(sc, HDMI_AUD_CH_STATUS1, CH_STATUS1_WORD_LEN_16);


 HDMI_WRITE(sc, HDMI_AUD_CTRL, AUD_CTRL_EN);
}
