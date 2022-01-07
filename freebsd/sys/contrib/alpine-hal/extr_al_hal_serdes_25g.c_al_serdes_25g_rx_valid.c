
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef int al_bool ;


 int SERDES_25G_LANE_TOP_LN_STAT_CTRL0_ADDR ;
 int SERDES_25G_LANE_TOP_LN_STAT_CTRL0_RXVALID_MASK ;
 int SERDES_25G_LANE_TOP_LN_STAT_CTRL0_RXVALID_SHIFT ;
 int al_serdes_25g_reg_masked_read (struct al_serdes_grp_obj*,int,int ,int ,int ,int *) ;

__attribute__((used)) static al_bool al_serdes_25g_rx_valid(
  struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane)
{
 uint8_t reg;

 al_serdes_25g_reg_masked_read(obj,
    (enum al_serdes_reg_page)lane,
    SERDES_25G_LANE_TOP_LN_STAT_CTRL0_ADDR,
    SERDES_25G_LANE_TOP_LN_STAT_CTRL0_RXVALID_MASK,
    SERDES_25G_LANE_TOP_LN_STAT_CTRL0_RXVALID_SHIFT,
    &reg);

 return !!reg;

}
