
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_tx_bmi_regs {int fmbm_tfufdc; int fmbm_tfledc; int fmbm_tbdc; int fmbm_tfdc; int fmbm_tfrc; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_stats_counters { ____Placeholder_fman_port_stats_counters } fman_port_stats_counters ;
struct TYPE_2__ {struct fman_port_tx_bmi_regs tx; } ;
__attribute__((used)) static void get_tx_stats_reg(struct fman_port *port,
        enum fman_port_stats_counters counter,
        uint32_t **stats_reg)
{
    struct fman_port_tx_bmi_regs *regs = &port->bmi_regs->tx;

    switch (counter) {
    case 130:
        *stats_reg = &regs->fmbm_tfrc;
        break;
    case 131:
        *stats_reg = &regs->fmbm_tfdc;
        break;
    case 132:
        *stats_reg = &regs->fmbm_tbdc;
        break;
    case 129:
        *stats_reg = &regs->fmbm_tfledc;
        break;
    case 128:
        *stats_reg = &regs->fmbm_tfufdc;
        break;
    default:
        *stats_reg = ((void*)0);
    }
}
