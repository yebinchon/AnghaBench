
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_kr_coef_up_data {int c_plus; int c_zero; int c_minus; scalar_t__ initialize; scalar_t__ preset; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;


 int AL_ETH_KR_PMD_LD_COEF_UP ;
 int AL_ETH_KR_PMD_LD_COEF_UP_INITIALIZE_SHIFT ;
 int AL_ETH_KR_PMD_LD_COEF_UP_MINUS_MASK ;
 int AL_ETH_KR_PMD_LD_COEF_UP_MINUS_SHIFT ;
 int AL_ETH_KR_PMD_LD_COEF_UP_PLUS_MASK ;
 int AL_ETH_KR_PMD_LD_COEF_UP_PLUS_SHIFT ;
 int AL_ETH_KR_PMD_LD_COEF_UP_PRESET_SHIFT ;
 int AL_ETH_KR_PMD_LD_COEF_UP_ZERO_MASK ;
 int AL_ETH_KR_PMD_LD_COEF_UP_ZERO_SHIFT ;
 int AL_ETH_LT_REGS ;
 int AL_REG_BIT_SET (int ,int ) ;
 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int,int ) ;

void al_eth_ld_coeff_up_set(
   struct al_hal_eth_adapter *adapter,
   enum al_eth_an_lt_lane lane,
   struct al_eth_kr_coef_up_data *ldcoeff)
{
 uint16_t reg = 0;

 if (ldcoeff->preset)
  AL_REG_BIT_SET(reg, AL_ETH_KR_PMD_LD_COEF_UP_PRESET_SHIFT);

 if (ldcoeff->initialize)
  AL_REG_BIT_SET(reg, AL_ETH_KR_PMD_LD_COEF_UP_INITIALIZE_SHIFT);

 AL_REG_FIELD_SET(reg,
    AL_ETH_KR_PMD_LD_COEF_UP_MINUS_MASK,
    AL_ETH_KR_PMD_LD_COEF_UP_MINUS_SHIFT,
    ldcoeff->c_minus);

 AL_REG_FIELD_SET(reg,
    AL_ETH_KR_PMD_LD_COEF_UP_ZERO_MASK,
    AL_ETH_KR_PMD_LD_COEF_UP_ZERO_SHIFT,
    ldcoeff->c_zero);

 AL_REG_FIELD_SET(reg,
    AL_ETH_KR_PMD_LD_COEF_UP_PLUS_MASK,
    AL_ETH_KR_PMD_LD_COEF_UP_PLUS_SHIFT,
    ldcoeff->c_plus);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_PMD_LD_COEF_UP, AL_ETH_LT_REGS, lane, reg);
}
