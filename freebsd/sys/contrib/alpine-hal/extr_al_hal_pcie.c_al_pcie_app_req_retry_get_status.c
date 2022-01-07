
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pm_control; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {scalar_t__ rev_id; struct al_pcie_regs* regs; } ;
typedef int al_bool ;


 int AL_FALSE ;
 scalar_t__ AL_PCIE_REV_ID_3 ;
 int AL_TRUE ;
 int PCIE_W_REV1_2_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN ;
 int PCIE_W_REV3_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN ;
 int al_reg_read32 (int ) ;

al_bool al_pcie_app_req_retry_get_status(struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 uint32_t pm_control;
 uint32_t mask = (pcie_port->rev_id == AL_PCIE_REV_ID_3) ?
  PCIE_W_REV3_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN :
  PCIE_W_REV1_2_GLOBAL_CTRL_PM_CONTROL_APP_REQ_RETRY_EN;

 pm_control = al_reg_read32(regs->app.global_ctrl.pm_control);
 return (pm_control & mask) ? AL_TRUE : AL_FALSE;
}
