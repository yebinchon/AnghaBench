
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_kr_coef_up_data {int preset; int initialize; void* c_plus; void* c_zero; void* c_minus; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;


 int AL_ETH_KR_PMD_LP_COEF_UP ;
 int AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT ;
 int AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK ;
 int AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT ;
 int AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK ;
 int AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT ;
 int AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT ;
 int AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK ;
 int AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT ;
 int AL_ETH_LT_REGS ;
 scalar_t__ AL_REG_BIT_GET (int ,int ) ;
 void* AL_REG_FIELD_GET (int ,int ,int ) ;
 int al_eth_an_lt_reg_read (struct al_hal_eth_adapter*,int ,int ,int) ;

void al_eth_lp_coeff_up_get(
   struct al_hal_eth_adapter *adapter,
   enum al_eth_an_lt_lane lane,
   struct al_eth_kr_coef_up_data *lpcoeff)
{
 uint16_t reg;

 reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_PMD_LP_COEF_UP, AL_ETH_LT_REGS, lane);

 lpcoeff->preset =
  (AL_REG_BIT_GET(
   reg, AL_ETH_KR_PMD_LP_COEF_UP_PRESET_SHIFT) != 0);

 lpcoeff->initialize =
  (AL_REG_BIT_GET(
   reg, AL_ETH_KR_PMD_LP_COEF_UP_INITIALIZE_SHIFT) != 0);

 lpcoeff->c_minus = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_PMD_LP_COEF_UP_MINUS_MASK,
     AL_ETH_KR_PMD_LP_COEF_UP_MINUS_SHIFT);

 lpcoeff->c_zero = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_PMD_LP_COEF_UP_ZERO_MASK,
     AL_ETH_KR_PMD_LP_COEF_UP_ZERO_SHIFT);

 lpcoeff->c_plus = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_PMD_LP_COEF_UP_PLUS_MASK,
     AL_ETH_KR_PMD_LP_COEF_UP_PLUS_SHIFT);
}
