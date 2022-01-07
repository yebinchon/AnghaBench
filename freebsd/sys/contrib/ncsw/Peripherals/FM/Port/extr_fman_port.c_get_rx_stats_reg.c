
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_rx_bmi_regs {int fmbm_rfldec; int fmbm_rffc; int fmbm_rodc; int fmbm_rlfc; int fmbm_rfbc; int fmbm_rbdc; int fmbm_rfdc; int fmbm_rfrc; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_stats_counters { ____Placeholder_fman_port_stats_counters } fman_port_stats_counters ;
struct TYPE_2__ {struct fman_port_rx_bmi_regs rx; } ;
__attribute__((used)) static void get_rx_stats_reg(struct fman_port *port,
        enum fman_port_stats_counters counter,
        uint32_t **stats_reg)
{
    struct fman_port_rx_bmi_regs *regs = &port->bmi_regs->rx;

    switch (counter) {
    case 131:
        *stats_reg = &regs->fmbm_rfrc;
        break;
    case 134:
        *stats_reg = &regs->fmbm_rfdc;
        break;
    case 135:
        *stats_reg = &regs->fmbm_rbdc;
        break;
    case 130:
        *stats_reg = &regs->fmbm_rfbc;
        break;
    case 129:
        *stats_reg = &regs->fmbm_rlfc;
        break;
    case 128:
        *stats_reg = &regs->fmbm_rodc;
        break;
    case 132:
        *stats_reg = &regs->fmbm_rffc;
        break;
    case 133:
        *stats_reg = &regs->fmbm_rfldec;
        break;
    default:
        *stats_reg = ((void*)0);
    }
}
