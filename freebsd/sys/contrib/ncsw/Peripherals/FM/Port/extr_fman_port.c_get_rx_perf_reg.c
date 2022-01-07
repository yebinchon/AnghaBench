
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_rx_bmi_regs {int fmbm_rpac; int fmbm_rfuc; int fmbm_rduc; int fmbm_rrquc; int fmbm_rtuc; int fmbm_rccn; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_perf_counters { ____Placeholder_fman_port_perf_counters } fman_port_perf_counters ;
struct TYPE_2__ {struct fman_port_rx_bmi_regs rx; } ;
__attribute__((used)) static void get_rx_perf_reg(struct fman_port *port,
        enum fman_port_perf_counters counter,
        uint32_t **perf_reg)
{
    struct fman_port_rx_bmi_regs *regs = &port->bmi_regs->rx;

    switch (counter) {
    case 133:
        *perf_reg = &regs->fmbm_rccn;
        break;
    case 128:
        *perf_reg = &regs->fmbm_rtuc;
        break;
    case 130:
        *perf_reg = &regs->fmbm_rrquc;
        break;
    case 132:
        *perf_reg = &regs->fmbm_rduc;
        break;
    case 131:
        *perf_reg = &regs->fmbm_rfuc;
        break;
    case 129:
        *perf_reg = &regs->fmbm_rpac;
        break;
    default:
        *perf_reg = ((void*)0);
    }
}
