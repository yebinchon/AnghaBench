
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {TYPE_1__* debug; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {int port_id; scalar_t__ regs; } ;
typedef int al_bool ;
struct TYPE_3__ {int info_0; } ;


 int AL_FALSE ;
 scalar_t__ AL_PCIE_LTSSM_STATE_L0 ;
 scalar_t__ AL_PCIE_LTSSM_STATE_L0S ;
 scalar_t__ AL_REG_FIELD_GET (int ,int ,int ) ;
 int AL_TRUE ;
 int PCIE_W_DEBUG_INFO_0_LTSSM_STATE_MASK ;
 int PCIE_W_DEBUG_INFO_0_LTSSM_STATE_SHIFT ;
 int al_dbg (char*,int ,int ,scalar_t__) ;
 int al_reg_read32 (int *) ;

__attribute__((used)) static al_bool
al_pcie_check_link(
 struct al_pcie_port *pcie_port,
 uint8_t *ltssm_ret)
{
 struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;
 uint32_t info_0;
 uint8_t ltssm_state;

 info_0 = al_reg_read32(&regs->app.debug->info_0);

 ltssm_state = AL_REG_FIELD_GET(info_0,
   PCIE_W_DEBUG_INFO_0_LTSSM_STATE_MASK,
   PCIE_W_DEBUG_INFO_0_LTSSM_STATE_SHIFT);

 al_dbg("PCIe %d: Port Debug 0: 0x%08x. LTSSM state :0x%x\n",
  pcie_port->port_id, info_0, ltssm_state);

 if (ltssm_ret)
  *ltssm_ret = ltssm_state;

 if ((ltssm_state == AL_PCIE_LTSSM_STATE_L0) ||
   (ltssm_state == AL_PCIE_LTSSM_STATE_L0S))
  return AL_TRUE;
 return AL_FALSE;
}
