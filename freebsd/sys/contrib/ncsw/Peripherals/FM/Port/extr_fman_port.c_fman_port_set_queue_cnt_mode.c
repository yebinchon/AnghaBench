
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {TYPE_1__* qmi_regs; } ;
struct TYPE_2__ {int fmqm_pnc; } ;


 int QMI_PORT_CFG_EN_COUNTERS ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

int fman_port_set_queue_cnt_mode(struct fman_port *port, bool enable)
{
    uint32_t tmp;

    tmp = ioread32be(&port->qmi_regs->fmqm_pnc);

    if (enable)
        tmp |= QMI_PORT_CFG_EN_COUNTERS;
    else
        tmp &= ~QMI_PORT_CFG_EN_COUNTERS;

    iowrite32be(tmp, &port->qmi_regs->fmqm_pnc);
    return 0;
}
