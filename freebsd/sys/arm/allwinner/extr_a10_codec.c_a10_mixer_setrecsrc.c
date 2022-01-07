
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snd_mixer {int dummy; } ;
struct a10codec_info {int dummy; } ;


 int A10_ADCIS_MASK ;
 int A10_ADCIS_SHIFT ;
 int A10_ADC_ACTL ;



 int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int) ;



 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;

__attribute__((used)) static uint32_t
a10_mixer_setrecsrc(struct snd_mixer *m, uint32_t src)
{
 struct a10codec_info *sc = mix_getdevinfo(m);
 uint32_t val;

 val = CODEC_READ(sc, A10_ADC_ACTL);

 switch (src) {
 case 130:
  val &= ~A10_ADCIS_MASK;
  val |= (133 << A10_ADCIS_SHIFT);
  break;
 case 128:
  val &= ~A10_ADCIS_MASK;
  val |= (132 << A10_ADCIS_SHIFT);
  break;
 case 129:
  val &= ~A10_ADCIS_MASK;
  val |= (131 << A10_ADCIS_SHIFT);
  break;
 default:
  break;
 }

 CODEC_WRITE(sc, A10_ADC_ACTL, val);

 switch ((val & A10_ADCIS_MASK) >> A10_ADCIS_SHIFT) {
 case 133:
  return (130);
 case 132:
  return (128);
 case 131:
  return (129);
 default:
  return (0);
 }
}
