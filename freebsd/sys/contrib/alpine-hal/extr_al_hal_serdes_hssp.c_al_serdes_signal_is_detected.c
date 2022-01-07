
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef int al_bool ;


 int AL_FALSE ;
 int AL_SRDS_REG_TYPE_PMA ;
 int AL_TRUE ;
 int SERDES_IREG_FLD_RXRANDET_REG_NUM ;
 int SERDES_IREG_FLD_RXRANDET_STAT ;
 int al_serdes_grp_reg_read (struct al_serdes_grp_obj*,int,int ,int ) ;

__attribute__((used)) static al_bool al_serdes_signal_is_detected(
  struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane)
{
 uint32_t reg = 0;

 reg = al_serdes_grp_reg_read(
   obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_RXRANDET_REG_NUM);

 return ((reg & SERDES_IREG_FLD_RXRANDET_STAT) ? AL_TRUE : AL_FALSE);
}
