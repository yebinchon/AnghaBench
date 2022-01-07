
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_port_qmi_regs {int fmqm_pndcc; int fmqm_pndfdc; int fmqm_pndtfc; int fmqm_pnetfc; } ;
struct fman_port {int type; struct fman_port_qmi_regs* qmi_regs; } ;
typedef enum fman_port_qmi_counters { ____Placeholder_fman_port_qmi_counters } fman_port_qmi_counters ;






 int E_FMAN_PORT_TYPE_RX ;
 int E_FMAN_PORT_TYPE_RX_10G ;

__attribute__((used)) static void get_qmi_counter_reg(struct fman_port *port,
        enum fman_port_qmi_counters counter,
        uint32_t **queue_reg)
{
    struct fman_port_qmi_regs *regs = port->qmi_regs;

    switch (counter) {
    case 128:
        *queue_reg = &regs->fmqm_pnetfc;
        break;
    case 129:
        if ((port->type == E_FMAN_PORT_TYPE_RX) ||
                (port->type == E_FMAN_PORT_TYPE_RX_10G))

            *queue_reg = ((void*)0);
        else
            *queue_reg = &regs->fmqm_pndtfc;
        break;
    case 130:
        if ((port->type == E_FMAN_PORT_TYPE_RX) ||
                (port->type == E_FMAN_PORT_TYPE_RX_10G))

            *queue_reg = ((void*)0);
        else
            *queue_reg = &regs->fmqm_pndfdc;
        break;
    case 131:
        if ((port->type == E_FMAN_PORT_TYPE_RX) ||
                (port->type == E_FMAN_PORT_TYPE_RX_10G))

            *queue_reg = ((void*)0);
        else
            *queue_reg = &regs->fmqm_pndcc;
        break;
    default:
        *queue_reg = ((void*)0);
    }
}
