
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int AL_SRDS_REG_TYPE_PMA ;
 int al_serdes_reg_write (struct al_serdes_grp_obj*,int,int ,int,int) ;

__attribute__((used)) static void al_serdes_lane_rx_rate_change_sw_flow_dis(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane)
{
 al_serdes_reg_write(obj, (enum al_serdes_reg_page)lane, AL_SRDS_REG_TYPE_PMA, 205, 0x7f);
}
