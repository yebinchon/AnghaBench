
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_2__* port_regs; } ;
struct al_pcie_port {scalar_t__ rev_id; struct al_pcie_regs* regs; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int cr1; int cr2; int index; } ;
struct TYPE_4__ {TYPE_1__ iatu; } ;


 scalar_t__ AL_FALSE ;
 int AL_PCIE_ATU_DIR_OUTBOUND ;
 int AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS ;
 int AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS ;
 scalar_t__ AL_PCIE_REV_ID_3 ;
 scalar_t__ AL_REG_BIT_GET (int ,int) ;
 int AL_REG_BIT_SET (int ,int) ;
 int AL_REG_BIT_VAL_SET (int ,int,int ) ;
 unsigned int AL_REG_FIELD_GET (int ,int ,int ) ;
 int AL_REG_FIELD_SET (int ,int,int ,int) ;
 scalar_t__ AL_TRUE ;
 int PCIE_IATU_CR1_FUNC_NUM_MASK ;
 int PCIE_IATU_CR1_FUNC_NUM_SHIFT ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static void al_pcie_ecrc_gen_ob_atu_enable(struct al_pcie_port *pcie_port, unsigned int pf_num)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 int max_ob_atu = (pcie_port->rev_id == AL_PCIE_REV_ID_3) ?
  AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS : AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS;
 int i;
 for (i = 0; i < max_ob_atu; i++) {
  al_bool enable = 0;
  uint32_t reg = 0;
  unsigned int func_num;
  AL_REG_FIELD_SET(reg, 0xF, 0, i);
  AL_REG_BIT_VAL_SET(reg, 31, AL_PCIE_ATU_DIR_OUTBOUND);
  al_reg_write32(&regs->port_regs->iatu.index, reg);
  reg = al_reg_read32(&regs->port_regs->iatu.cr2);
  enable = AL_REG_BIT_GET(reg, 31) ? AL_TRUE : AL_FALSE;
  reg = al_reg_read32(&regs->port_regs->iatu.cr1);
  func_num = AL_REG_FIELD_GET(reg,
    PCIE_IATU_CR1_FUNC_NUM_MASK,
    PCIE_IATU_CR1_FUNC_NUM_SHIFT);
  if ((enable == AL_TRUE) && (pf_num == func_num)) {

   AL_REG_BIT_SET(reg, 8);
   al_reg_write32(&regs->port_regs->iatu.cr1, reg);
  }
 }
}
