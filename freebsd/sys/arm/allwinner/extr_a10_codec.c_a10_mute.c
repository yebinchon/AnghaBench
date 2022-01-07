
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10codec_info {int dummy; } ;


 int A10_ADCLEN ;
 int A10_ADCREN ;
 int A10_ADC_ACTL ;
 int A10_DACALEN ;
 int A10_DACAREN ;
 int A10_DACPAS ;
 int A10_DAC_ACTL ;
 int A10_PREG1EN ;
 int A10_VMICEN ;
 int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int ) ;
 int PCMDIR_PLAY ;

__attribute__((used)) static void
a10_mute(struct a10codec_info *sc, int mute, int dir)
{
 uint32_t val;

 if (dir == PCMDIR_PLAY) {
  val = CODEC_READ(sc, A10_DAC_ACTL);
  if (mute) {

   val &= ~A10_DACAREN;
   val &= ~A10_DACALEN;
   val &= ~A10_DACPAS;
  } else {

   val |= A10_DACAREN;
   val |= A10_DACALEN;
   val |= A10_DACPAS;
  }
  CODEC_WRITE(sc, A10_DAC_ACTL, val);
 } else {
  val = CODEC_READ(sc, A10_ADC_ACTL);
  if (mute) {



   val &= ~A10_ADCREN;
   val &= ~A10_ADCLEN;
   val &= ~A10_PREG1EN;
   val &= ~A10_VMICEN;
  } else {



   val |= A10_ADCREN;
   val |= A10_ADCLEN;
   val |= A10_PREG1EN;
   val |= A10_VMICEN;
  }
  CODEC_WRITE(sc, A10_ADC_ACTL, val);
 }
}
