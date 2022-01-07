
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int AL_SERDES_TX_DEEMPH_C_MINUS_PRESET ;
 int AL_SERDES_TX_DEEMPH_C_PLUS_PRESET ;
 int AL_SERDES_TX_DEEMPH_C_ZERO_PRESET ;
 int al_dbg (char*,int ,int ,int ) ;
 int al_serdes_tx_deemph_set (struct al_serdes_grp_obj*,int,int ,int ,int ) ;

__attribute__((used)) static void al_serdes_tx_deemph_preset(
  struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane)
{
 uint32_t c0;
 uint32_t c1;
 uint32_t c_1;

 c0 = AL_SERDES_TX_DEEMPH_C_ZERO_PRESET;

 c1 = AL_SERDES_TX_DEEMPH_C_PLUS_PRESET;

 c_1 = AL_SERDES_TX_DEEMPH_C_MINUS_PRESET;

 al_dbg("preset: new txdeemph: c0 = 0x%x c1 = 0x%x c-1 = 0x%x\n",
  c0, c1, c_1);

 al_serdes_tx_deemph_set(obj, lane, c0, c1, c_1);
}
