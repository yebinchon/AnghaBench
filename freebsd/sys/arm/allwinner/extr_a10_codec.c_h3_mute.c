
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a10codec_info {int dummy; } ;


 int H3_ADCLEN ;
 int H3_ADCREN ;
 int H3_ADC_AP_EN ;
 int H3_DACALEN ;
 int H3_DACAREN ;
 int H3_DAC_PA_SRC ;
 int H3_LMIXEN ;
 int H3_LOMIXSC ;
 int H3_LOMIXSC_LDAC ;
 int H3_RMIXEN ;
 int H3_ROMIXSC ;
 int H3_ROMIXSC_RDAC ;
 int PCMDIR_PLAY ;
 int h3_pr_set_clear (struct a10codec_info*,int ,int,int) ;

__attribute__((used)) static void
h3_mute(struct a10codec_info *sc, int mute, int dir)
{
 if (dir == PCMDIR_PLAY) {
  if (mute) {

   h3_pr_set_clear(sc, H3_LOMIXSC, 0, H3_LOMIXSC_LDAC);
   h3_pr_set_clear(sc, H3_ROMIXSC, 0, H3_ROMIXSC_RDAC);

   h3_pr_set_clear(sc, H3_DAC_PA_SRC,
       0, H3_DACAREN | H3_DACALEN | H3_RMIXEN | H3_LMIXEN);
  } else {

   h3_pr_set_clear(sc, H3_DAC_PA_SRC,
       H3_DACAREN | H3_DACALEN | H3_RMIXEN | H3_LMIXEN, 0);

   h3_pr_set_clear(sc, H3_LOMIXSC, H3_LOMIXSC_LDAC, 0);
   h3_pr_set_clear(sc, H3_ROMIXSC, H3_ROMIXSC_RDAC, 0);
  }
 } else {
  if (mute) {

   h3_pr_set_clear(sc, H3_ADC_AP_EN,
       0, H3_ADCREN | H3_ADCLEN);
  } else {

   h3_pr_set_clear(sc, H3_ADC_AP_EN,
       H3_ADCREN | H3_ADCLEN, 0);
  }
 }
}
