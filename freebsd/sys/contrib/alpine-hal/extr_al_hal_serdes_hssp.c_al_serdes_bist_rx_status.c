
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef int al_bool ;


 int AL_FALSE ;
 int AL_SRDS_REG_TYPE_PMA ;
 int AL_TRUE ;
 int SERDES_IREG_FLD_RXBIST_ERRCOUNT_LSB_REG_NUM ;
 int SERDES_IREG_FLD_RXBIST_ERRCOUNT_MSB_REG_NUM ;
 int SERDES_IREG_FLD_RXBIST_ERRCOUNT_OVERFLOW ;
 int SERDES_IREG_FLD_RXBIST_RXLOCKED ;
 int SERDES_IREG_FLD_RXBIST_RXLOCKED_REG_NUM ;
 int al_serdes_grp_reg_read (struct al_serdes_grp_obj*,int,int ,int ) ;

__attribute__((used)) static void al_serdes_bist_rx_status(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane,
 al_bool *is_locked,
 al_bool *err_cnt_overflow,
 uint32_t *err_cnt)
{
 uint8_t status_reg_val;
 uint16_t err_cnt_msb_reg_val;
 uint16_t err_cnt_lsb_reg_val;

 status_reg_val = al_serdes_grp_reg_read(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_RXBIST_RXLOCKED_REG_NUM);

 err_cnt_msb_reg_val = al_serdes_grp_reg_read(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_RXBIST_ERRCOUNT_MSB_REG_NUM);

 err_cnt_lsb_reg_val = al_serdes_grp_reg_read(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_RXBIST_ERRCOUNT_LSB_REG_NUM);

 *is_locked =
  (status_reg_val & SERDES_IREG_FLD_RXBIST_RXLOCKED) ?
  AL_TRUE : AL_FALSE;

 *err_cnt_overflow =
  (status_reg_val & SERDES_IREG_FLD_RXBIST_ERRCOUNT_OVERFLOW) ?
  AL_TRUE : AL_FALSE;

 *err_cnt = (err_cnt_msb_reg_val << 8) + err_cnt_lsb_reg_val;
}
