
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {int type; TYPE_5__* qmi_regs; TYPE_4__* bmi_regs; } ;
struct TYPE_10__ {int fmqm_pnc; } ;
struct TYPE_8__ {int fmbm_ocfg; } ;
struct TYPE_7__ {int fmbm_tcfg; } ;
struct TYPE_6__ {int fmbm_rcfg; } ;
struct TYPE_9__ {TYPE_3__ oh; TYPE_2__ tx; TYPE_1__ rx; } ;


 int BMI_PORT_CFG_EN ;
 int EINVAL ;






 int FALSE ;
 int QMI_PORT_CFG_EN ;
 int TRUE ;
 int ioread32be (int*) ;
 int iowrite32be (int,int*) ;

int fman_port_enable(struct fman_port *port)
{
    uint32_t *bmi_cfg_reg, tmp;
    bool rx_port;

    switch (port->type) {
    case 131:
    case 130:
        bmi_cfg_reg = &port->bmi_regs->rx.fmbm_rcfg;
        rx_port = TRUE;
        break;
    case 129:
    case 128:
        bmi_cfg_reg = &port->bmi_regs->tx.fmbm_tcfg;
        rx_port = FALSE;
        break;
    case 132:
    case 133:
        bmi_cfg_reg = &port->bmi_regs->oh.fmbm_ocfg;
        rx_port = FALSE;
        break;
    default:
        return -EINVAL;
    }


    if (!rx_port) {
        tmp = ioread32be(&port->qmi_regs->fmqm_pnc) | QMI_PORT_CFG_EN;
        iowrite32be(tmp, &port->qmi_regs->fmqm_pnc);
    }


    tmp = ioread32be(bmi_cfg_reg) | BMI_PORT_CFG_EN;
    iowrite32be(tmp, bmi_cfg_reg);

    return 0;
}
