
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer {int dummy; } ;
struct a10codec_info {int dev; int ** res; } ;
typedef int reg ;
typedef scalar_t__ phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int analogref ;


 int ENXIO ;
 int H3_LINEOUTEN ;
 int H3_LINEOUT_LSEL ;
 int H3_LINEOUT_RSEL ;
 int H3_MIC2G_LINEOUT_CTR ;
 int H3_PAEN_CTR ;
 scalar_t__ OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_node_from_xref (scalar_t__) ;
 int RF_ACTIVE ;
 int SD_F_SOFTPCMVOL ;
 int SOUND_MASK_IMIX ;
 int SOUND_MASK_LINE ;
 int SOUND_MASK_LINE1 ;
 int SOUND_MASK_MIC ;
 int SOUND_MASK_PCM ;
 int SOUND_MASK_RECLEV ;
 int SOUND_MASK_VOLUME ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource (int ,int ,int*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int h3_pr_set_clear (struct a10codec_info*,int ,int,int ) ;
 struct a10codec_info* mix_getdevinfo (struct snd_mixer*) ;
 int mix_setdevs (struct snd_mixer*,int) ;
 int mix_setrecdevs (struct snd_mixer*,int) ;
 int ofw_bus_get_node (int ) ;
 int pcm_getflags (int ) ;
 int pcm_setflags (int ,int) ;

__attribute__((used)) static int
h3_mixer_init(struct snd_mixer *m)
{
 int rid=1;
 pcell_t reg[2];
 phandle_t analogref;
 struct a10codec_info *sc = mix_getdevinfo(m);

 if (OF_getencprop(ofw_bus_get_node(sc->dev), "allwinner,codec-analog-controls",
     &analogref, sizeof(analogref)) <= 0) {
  return (ENXIO);
 }

 if (OF_getencprop(OF_node_from_xref(analogref), "reg",
     reg, sizeof(reg)) <= 0) {
  return (ENXIO);
 }

 sc->res[1] = bus_alloc_resource(sc->dev, SYS_RES_MEMORY, &rid, reg[0],
     reg[0]+reg[1], reg[1], RF_ACTIVE );

 if (sc->res[1] == ((void*)0)) {
  return (ENXIO);
 }

 mix_setdevs(m, SOUND_MASK_PCM | SOUND_MASK_VOLUME | SOUND_MASK_RECLEV |
     SOUND_MASK_MIC | SOUND_MASK_LINE | SOUND_MASK_LINE1);
 mix_setrecdevs(m, SOUND_MASK_MIC | SOUND_MASK_LINE | SOUND_MASK_LINE1 |
     SOUND_MASK_IMIX);

 pcm_setflags(sc->dev, pcm_getflags(sc->dev) | SD_F_SOFTPCMVOL);


 h3_pr_set_clear(sc, H3_PAEN_CTR, H3_LINEOUTEN, 0);
 h3_pr_set_clear(sc, H3_MIC2G_LINEOUT_CTR,
     H3_LINEOUT_LSEL | H3_LINEOUT_RSEL, 0);

 return (0);
}
