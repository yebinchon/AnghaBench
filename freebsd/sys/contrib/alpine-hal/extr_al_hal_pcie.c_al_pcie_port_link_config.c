
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct al_pcie_regs {TYPE_2__* port_regs; TYPE_1__* core_space; } ;
struct al_pcie_port {int max_lanes; int port_id; struct al_pcie_regs* regs; } ;
struct al_pcie_link_params {int max_payload_size; int max_speed; } ;
struct TYPE_4__ {int port_link_ctrl; int gen2_ctrl; } ;
struct TYPE_3__ {int * pcie_dev_ctrl_status; } ;


 int AL_PCIE_MPS_128 ;
 int AL_PCIE_MPS_256 ;
 int AL_PCIE_MPS_DEFAULT ;
 int EINVAL ;
 int PCIE_PORT_DEV_CTRL_STATUS_MPS_MASK ;
 int PCIE_PORT_DEV_CTRL_STATUS_MPS_SHIFT ;
 int PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_MASK ;
 int PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_SHIFT ;
 int PCIE_PORT_LINK_CTRL_LINK_CAPABLE_MASK ;
 int PCIE_PORT_LINK_CTRL_LINK_CAPABLE_SHIFT ;
 int al_err (char*,int ,int) ;
 int al_pcie_port_link_speed_ctrl_set (struct al_pcie_port*,int ) ;
 int al_reg_write32_masked (int *,int ,int) ;

__attribute__((used)) static int
al_pcie_port_link_config(
 struct al_pcie_port *pcie_port,
 const struct al_pcie_link_params *link_params)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 uint8_t max_lanes = pcie_port->max_lanes;

 if ((link_params->max_payload_size != AL_PCIE_MPS_DEFAULT) &&
     (link_params->max_payload_size != AL_PCIE_MPS_128) &&
     (link_params->max_payload_size != AL_PCIE_MPS_256)) {
  al_err("PCIe %d: unsupported Max Payload Size (%u)\n",
         pcie_port->port_id, link_params->max_payload_size);
  return -EINVAL;
 }

 al_pcie_port_link_speed_ctrl_set(pcie_port, link_params->max_speed);




 if (link_params->max_payload_size != AL_PCIE_MPS_DEFAULT)
  al_reg_write32_masked(regs->core_space[0].pcie_dev_ctrl_status,
          PCIE_PORT_DEV_CTRL_STATUS_MPS_MASK,
          link_params->max_payload_size <<
     PCIE_PORT_DEV_CTRL_STATUS_MPS_SHIFT);
 al_reg_write32_masked(&regs->port_regs->gen2_ctrl,
    PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_MASK,
    max_lanes << PCIE_PORT_GEN2_CTRL_NUM_OF_LANES_SHIFT);
 al_reg_write32_masked(&regs->port_regs->port_link_ctrl,
    PCIE_PORT_LINK_CTRL_LINK_CAPABLE_MASK,
    (max_lanes + (max_lanes-1))
    << PCIE_PORT_LINK_CTRL_LINK_CAPABLE_SHIFT);

 return 0;
}
