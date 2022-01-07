
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;


 int H3_ADCMIXSC_LINEIN ;
 int H3_ADCMIXSC_MIC1 ;
 int H3_ADCMIXSC_MIC2 ;
 int H3_ADCMIXSC_OMIXER ;
 int H3_LADCMIXSC ;
 int H3_RADCMIXSC ;
 int SOUND_MASK_IMIX ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_LINE1 ;
 int SOUND_MASK_MIC ;
 int h3_pr_write (struct a10codec_info*,int ,int) ;
 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static uint32_t
h3_mixer_setrecsrc(struct snd_mixer *m, uint32_t src)
{
 struct a10codec_info *sc = mix_getdevinfo(m);
 uint32_t val;

 val = 0;
 src &= (SOUND_MASK_LINE | SOUND_MASK_MIC |
     SOUND_MASK_LINE1 | SOUND_MASK_IMIX);

 if ((src & SOUND_MASK_LINE) != 0)
  val |= H3_ADCMIXSC_LINEIN;
 if ((src & SOUND_MASK_MIC) != 0)
  val |= H3_ADCMIXSC_MIC1;
 if ((src & SOUND_MASK_LINE1) != 0)
  val |= H3_ADCMIXSC_MIC2;
 if ((src & SOUND_MASK_IMIX) != 0)
  val |= H3_ADCMIXSC_OMIXER;

 h3_pr_write(sc, H3_LADCMIXSC, val);
 h3_pr_write(sc, H3_RADCMIXSC, val);

 return (src);
}
