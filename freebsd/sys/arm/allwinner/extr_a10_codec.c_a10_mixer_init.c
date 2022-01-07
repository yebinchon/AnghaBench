
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;


 int A10_ADC_ACTL ;
 int A10_DAC_ACTL ;
 int A10_PAMUTE ;
 int A10_PA_EN ;
 int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int ) ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_LINE1 ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_RECLEV ;
 int SOUND_MASK_VOLUME ;
 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;

__attribute__((used)) static int
a10_mixer_init(struct snd_mixer *m)
{
 struct a10codec_info *sc = mix_getdevinfo(m);
 uint32_t val;

 mix_setdevs(m, SOUND_MASK_VOLUME | SOUND_MASK_LINE | SOUND_MASK_RECLEV);
 mix_setrecdevs(m, SOUND_MASK_LINE | SOUND_MASK_LINE1 | SOUND_MASK_MIC);


 val = CODEC_READ(sc, A10_DAC_ACTL);
 val |= A10_PAMUTE;
 CODEC_WRITE(sc, A10_DAC_ACTL, val);


 val = CODEC_READ(sc, A10_ADC_ACTL);
 val |= A10_PA_EN;
 CODEC_WRITE(sc, A10_ADC_ACTL, val);

 return (0);
}
