
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {int port_id; struct al_pcie_regs* regs; } ;
struct al_pcie_gen2_params {scalar_t__ set_deemphasis; scalar_t__ tx_compliance_receive_enable; scalar_t__ tx_swing_low; } ;
struct TYPE_2__ {int gen2_ctrl; } ;


 int AL_REG_BIT_CLEAR (int ,int ) ;
 int AL_REG_BIT_SET (int ,int ) ;
 int PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT ;
 int PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT ;
 int PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT ;
 int al_dbg (char*,int ,char*,char*,char*) ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static int
al_pcie_port_gen2_params_config(struct al_pcie_port *pcie_port,
    const struct al_pcie_gen2_params *gen2_params)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 uint32_t gen2_ctrl;

 al_dbg("PCIe %d: Gen2 params config: Tx Swing %s, interrupt on link Eq %s, set Deemphasis %s\n",
        pcie_port->port_id,
        gen2_params->tx_swing_low ? "Low" : "Full",
        gen2_params->tx_compliance_receive_enable? "enable" : "disable",
        gen2_params->set_deemphasis? "enable" : "disable");

 gen2_ctrl = al_reg_read32(&regs->port_regs->gen2_ctrl);

 if (gen2_params->tx_swing_low)
  AL_REG_BIT_SET(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT);
 else
  AL_REG_BIT_CLEAR(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT);

 if (gen2_params->tx_compliance_receive_enable)
  AL_REG_BIT_SET(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT);
 else
  AL_REG_BIT_CLEAR(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT);

 if (gen2_params->set_deemphasis)
  AL_REG_BIT_SET(gen2_ctrl, PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT);
 else
  AL_REG_BIT_CLEAR(gen2_ctrl, PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT);

 al_reg_write32(&regs->port_regs->gen2_ctrl, gen2_ctrl);

 return 0;
}
