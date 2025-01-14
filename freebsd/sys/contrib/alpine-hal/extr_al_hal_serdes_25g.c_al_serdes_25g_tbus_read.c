
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef enum al_serdes_25g_tbus_obj { ____Placeholder_al_serdes_25g_tbus_obj } al_serdes_25g_tbus_obj ;


 int AL_SERDES_25G_TBUS_ADDR_HIGH_SHIFT ;
 int AL_SERDES_25G_TBUS_DELAY ;
 int AL_SERDES_25G_TBUS_OBJ_CMU ;
 int AL_SERDES_25G_TBUS_OBJ_LANE ;
 int AL_SERDES_25G_TBUS_OBJ_TOP ;
 int AL_SRDS_NUM_LANES ;
 int AL_SRDS_REG_PAGE_TOP ;
 int SERDES_25G_TOP_TBUS_ADDR_15_8_ADDR ;
 int SERDES_25G_TOP_TBUS_ADDR_7_0_ADDR ;
 int SERDES_25G_TOP_TBUS_DATA_11_8_ADDR ;
 int SERDES_25G_TOP_TBUS_DATA_11_8_MASK ;
 int SERDES_25G_TOP_TBUS_DATA_11_8_SHIFT ;
 int SERDES_25G_TOP_TBUS_DATA_7_0_ADDR ;
 int al_assert (int) ;
 int al_serdes_25g_reg_masked_read (struct al_serdes_grp_obj*,int ,int ,int ,int ,int*) ;
 int al_serdes_25g_reg_read (struct al_serdes_grp_obj*,int ,int ,int ,int*) ;
 int al_serdes_25g_reg_write (struct al_serdes_grp_obj*,int ,int ,int ,int) ;
 int al_udelay (int ) ;

__attribute__((used)) static int al_serdes_25g_tbus_read(
  struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane,
  enum al_serdes_25g_tbus_obj tbus_obj,
  uint8_t offset,
  uint16_t *data)
{
 uint8_t addr_high, val_high, val_low;

 al_assert(lane < AL_SRDS_NUM_LANES);

 if (tbus_obj == AL_SERDES_25G_TBUS_OBJ_TOP)
  addr_high = AL_SERDES_25G_TBUS_OBJ_TOP;
 else if (tbus_obj == AL_SERDES_25G_TBUS_OBJ_CMU)
  addr_high = AL_SERDES_25G_TBUS_OBJ_CMU;
 else
  addr_high = AL_SERDES_25G_TBUS_OBJ_LANE + lane;

 addr_high <<= AL_SERDES_25G_TBUS_ADDR_HIGH_SHIFT;

 al_serdes_25g_reg_write(
   obj,
   AL_SRDS_REG_PAGE_TOP,
   0,
   SERDES_25G_TOP_TBUS_ADDR_7_0_ADDR,
   offset);

 al_serdes_25g_reg_write(
   obj,
   AL_SRDS_REG_PAGE_TOP,
   0,
   SERDES_25G_TOP_TBUS_ADDR_15_8_ADDR,
   addr_high);

 al_udelay(AL_SERDES_25G_TBUS_DELAY);

 al_serdes_25g_reg_read(
   obj,
   AL_SRDS_REG_PAGE_TOP,
   0,
   SERDES_25G_TOP_TBUS_DATA_7_0_ADDR,
   &val_low);

 al_serdes_25g_reg_masked_read(
   obj,
   AL_SRDS_REG_PAGE_TOP,
   SERDES_25G_TOP_TBUS_DATA_11_8_ADDR,
   SERDES_25G_TOP_TBUS_DATA_11_8_MASK,
   SERDES_25G_TOP_TBUS_DATA_11_8_SHIFT,
   &val_high);

 *data = (val_high << 8) | val_low;

 return 0;
}
