
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {int type; TYPE_4__* bmi_regs; } ;
struct TYPE_5__ {int fmbm_ostc; } ;
struct TYPE_7__ {int fmbm_tstc; } ;
struct TYPE_6__ {int fmbm_rstc; } ;
struct TYPE_8__ {TYPE_1__ oh; TYPE_3__ tx; TYPE_2__ rx; } ;


 int BMI_COUNTERS_EN ;
 int EINVAL ;






 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

int fman_port_set_stats_cnt_mode(struct fman_port *port, bool enable)
{
    uint32_t *stats_reg, tmp;

    switch (port->type) {
    case 131:
    case 130:
        stats_reg = &port->bmi_regs->rx.fmbm_rstc;
        break;
    case 129:
    case 128:
        stats_reg = &port->bmi_regs->tx.fmbm_tstc;
        break;
    case 132:
    case 133:
        stats_reg = &port->bmi_regs->oh.fmbm_ostc;
        break;
    default:
        return -EINVAL;
    }

    tmp = ioread32be(stats_reg);

    if (enable)
        tmp |= BMI_COUNTERS_EN;
    else
        tmp &= ~BMI_COUNTERS_EN;

    iowrite32be(tmp, stats_reg);
    return 0;
}
