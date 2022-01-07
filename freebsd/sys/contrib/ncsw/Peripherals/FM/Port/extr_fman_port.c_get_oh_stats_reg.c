
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port_oh_bmi_regs {int fmbm_ofwdc; int fmbm_ofufdc; int fmbm_ofledc; int fmbm_ofldec; int fmbm_offc; int fmbm_obdc; int fmbm_ofdc; int fmbm_ofrc; } ;
struct fman_port {TYPE_1__* bmi_regs; } ;
typedef enum fman_port_stats_counters { ____Placeholder_fman_port_stats_counters } fman_port_stats_counters ;
struct TYPE_2__ {struct fman_port_oh_bmi_regs oh; } ;
__attribute__((used)) static void get_oh_stats_reg(struct fman_port *port,
        enum fman_port_stats_counters counter,
        uint32_t **stats_reg)
{
    struct fman_port_oh_bmi_regs *regs = &port->bmi_regs->oh;

    switch (counter) {
    case 131:
        *stats_reg = &regs->fmbm_ofrc;
        break;
    case 134:
        *stats_reg = &regs->fmbm_ofdc;
        break;
    case 135:
        *stats_reg = &regs->fmbm_obdc;
        break;
    case 132:
        *stats_reg = &regs->fmbm_offc;
        break;
    case 133:
        *stats_reg = &regs->fmbm_ofldec;
        break;
    case 130:
        *stats_reg = &regs->fmbm_ofledc;
        break;
    case 129:
        *stats_reg = &regs->fmbm_ofufdc;
        break;
    case 128:
        *stats_reg = &regs->fmbm_ofwdc;
        break;
    default:
        *stats_reg = ((void*)0);
    }
}
