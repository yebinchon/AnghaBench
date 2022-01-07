
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_tx_bmi_regs {int fmbm_tfuc; int fmbm_tduc; int fmbm_ttcquc; int fmbm_ttuc; int fmbm_tccn; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_perf_counters { ____Placeholder_fman_port_perf_counters } fman_port_perf_counters ;
struct TYPE_2__ {struct fman_port_tx_bmi_regs tx; } ;
__attribute__((used)) static void get_tx_perf_reg(struct fman_port *port,
        enum fman_port_perf_counters counter,
        uint32_t **perf_reg)
{
    struct fman_port_tx_bmi_regs *regs = &port->bmi_regs->tx;

    switch (counter) {
    case 132:
        *perf_reg = &regs->fmbm_tccn;
        break;
    case 128:
        *perf_reg = &regs->fmbm_ttuc;
        break;
    case 129:
        *perf_reg = &regs->fmbm_ttcquc;
        break;
    case 131:
        *perf_reg = &regs->fmbm_tduc;
        break;
    case 130:
        *perf_reg = &regs->fmbm_tfuc;
        break;
    default:
        *perf_reg = ((void*)0);
    }
}
