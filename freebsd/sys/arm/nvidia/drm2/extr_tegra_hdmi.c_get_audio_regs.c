
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_reg {int audio_clk; int aval_reg; int nval_reg; int acr_reg; } ;
typedef int bus_size_t ;


 int ERANGE ;
 struct audio_reg* audio_regs ;
 int nitems (struct audio_reg*) ;

__attribute__((used)) static int
get_audio_regs(int freq, bus_size_t *acr_reg, bus_size_t *nval_reg,
    bus_size_t *aval_reg)
{
 int i;
 const struct audio_reg *reg;

 for (i = 0; i < nitems(audio_regs) ; i++) {
  reg = audio_regs + i;
  if (reg->audio_clk == freq) {
   if (acr_reg != ((void*)0))
    *acr_reg = reg->acr_reg;
   if (nval_reg != ((void*)0))
    *nval_reg = reg->nval_reg;
   if (aval_reg != ((void*)0))
    *aval_reg = reg->aval_reg;
   return (0);
  }
 }
 return (ERANGE);
}
