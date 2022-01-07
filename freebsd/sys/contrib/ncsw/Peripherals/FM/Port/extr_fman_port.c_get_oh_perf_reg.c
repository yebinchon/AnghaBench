
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_oh_bmi_regs {int fmbm_ofuc; int fmbm_oduc; int fmbm_otuc; int fmbm_occn; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_perf_counters { ____Placeholder_fman_port_perf_counters } fman_port_perf_counters ;
struct TYPE_2__ {struct fman_port_oh_bmi_regs oh; } ;







__attribute__((used)) static void get_oh_perf_reg(struct fman_port *port,
        enum fman_port_perf_counters counter,
        uint32_t **perf_reg)
{
    struct fman_port_oh_bmi_regs *regs = &port->bmi_regs->oh;

    switch (counter) {
    case 131:
        *perf_reg = &regs->fmbm_occn;
        break;
    case 128:
        *perf_reg = &regs->fmbm_otuc;
        break;
    case 130:
        *perf_reg = &regs->fmbm_oduc;
        break;
    case 129:
        *perf_reg = &regs->fmbm_ofuc;
        break;
    default:
        *perf_reg = ((void*)0);
    }
}
