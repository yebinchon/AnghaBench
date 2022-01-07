
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct a10codec_info {TYPE_1__* cfg; } ;
struct a10codec_chinfo {scalar_t__ dir; int format; scalar_t__ pos; struct a10codec_info* parent; } ;
struct TYPE_2__ {int (* mute ) (struct a10codec_info*,int ,scalar_t__) ;} ;


 int AC_ADC_FIFOC (struct a10codec_info*) ;
 int AC_ADC_FIFOS (struct a10codec_info*) ;
 int AC_DAC_FIFOC (struct a10codec_info*) ;
 int AC_DAC_FIFOS (struct a10codec_info*) ;
 int ADC_FIFOC_DRQ_EN ;
 int ADC_FIFOC_EN_AD ;
 int ADC_FIFOC_FIFO_FLUSH ;
 int ADC_FIFOC_FS_SHIFT ;
 int ADC_FIFOC_MONO_EN ;
 int ADC_FIFOC_RX_FIFO_MODE ;
 int ADC_FIFOC_RX_TRIG_LEVEL_SHIFT ;
 int AFMT_CHANNEL (int ) ;
 int CODEC_READ (struct a10codec_info*,int ) ;
 int CODEC_WRITE (struct a10codec_info*,int ,int) ;
 int DAC_FIFOC_DRQ_CLR_CNT_SHIFT ;
 int DAC_FIFOC_DRQ_EN ;
 int DAC_FIFOC_FIFO_FLUSH ;
 int DAC_FIFOC_FIFO_MODE_SHIFT ;
 int DAC_FIFOC_FS_SHIFT ;
 int DAC_FIFOC_MONO_EN ;
 int DAC_FIFOC_TX_TRIG_LEVEL_SHIFT ;
 int DRQ_CLR_CNT ;
 int FIFO_MODE_16_15_0 ;
 scalar_t__ PCMDIR_PLAY ;
 int RX_TRIG_LEVEL ;
 int TX_TRIG_LEVEL ;
 int a10codec_dmaconfig (struct a10codec_chinfo*) ;
 int a10codec_fs (struct a10codec_chinfo*) ;
 int a10codec_transfer (struct a10codec_chinfo*) ;
 int stub1 (struct a10codec_info*,int ,scalar_t__) ;
 int stub2 (struct a10codec_info*,int ,scalar_t__) ;

__attribute__((used)) static void
a10codec_start(struct a10codec_chinfo *ch)
{
 struct a10codec_info *sc = ch->parent;
 uint32_t val;

 ch->pos = 0;

 if (ch->dir == PCMDIR_PLAY) {

  CODEC_WRITE(sc, AC_DAC_FIFOC(sc), DAC_FIFOC_FIFO_FLUSH);


  CODEC_WRITE(sc, AC_DAC_FIFOS(sc),
      CODEC_READ(sc, AC_DAC_FIFOS(sc)));


  sc->cfg->mute(sc, 0, ch->dir);


  a10codec_dmaconfig(ch);


  CODEC_WRITE(sc, AC_DAC_FIFOC(sc),
      (AFMT_CHANNEL(ch->format) == 1 ? DAC_FIFOC_MONO_EN : 0) |
      (a10codec_fs(ch) << DAC_FIFOC_FS_SHIFT) |
      (FIFO_MODE_16_15_0 << DAC_FIFOC_FIFO_MODE_SHIFT) |
      (DRQ_CLR_CNT << DAC_FIFOC_DRQ_CLR_CNT_SHIFT) |
      (TX_TRIG_LEVEL << DAC_FIFOC_TX_TRIG_LEVEL_SHIFT));


  val = CODEC_READ(sc, AC_DAC_FIFOC(sc));
  val |= DAC_FIFOC_DRQ_EN;
  CODEC_WRITE(sc, AC_DAC_FIFOC(sc), val);
 } else {

  CODEC_WRITE(sc, AC_ADC_FIFOC(sc), ADC_FIFOC_FIFO_FLUSH);


  CODEC_WRITE(sc, AC_ADC_FIFOS(sc),
      CODEC_READ(sc, AC_ADC_FIFOS(sc)));


  sc->cfg->mute(sc, 0, ch->dir);


  a10codec_dmaconfig(ch);


  CODEC_WRITE(sc, AC_ADC_FIFOC(sc),
      ADC_FIFOC_EN_AD |
      ADC_FIFOC_RX_FIFO_MODE |
      (AFMT_CHANNEL(ch->format) == 1 ? ADC_FIFOC_MONO_EN : 0) |
      (a10codec_fs(ch) << ADC_FIFOC_FS_SHIFT) |
      (RX_TRIG_LEVEL << ADC_FIFOC_RX_TRIG_LEVEL_SHIFT));


  val = CODEC_READ(sc, AC_ADC_FIFOC(sc));
  val |= ADC_FIFOC_DRQ_EN;
  CODEC_WRITE(sc, AC_ADC_FIFOC(sc), val);
 }


 a10codec_transfer(ch);
}
