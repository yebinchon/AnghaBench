
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {int type; TYPE_3__* bmi_regs; } ;
struct TYPE_5__ {int fmbm_ofsdm; } ;
struct TYPE_4__ {int fmbm_rfsdm; } ;
struct TYPE_6__ {TYPE_2__ oh; TYPE_1__ rx; } ;


 int EINVAL ;



 int iowrite32be (int ,int *) ;

int fman_port_set_discard_mask(struct fman_port *port, uint32_t discard_mask)
{
    uint32_t *discard_mask_reg;


    switch (port->type) {
    case 129:
    case 128:
        discard_mask_reg = &port->bmi_regs->rx.fmbm_rfsdm;
        break;
    case 130:
        discard_mask_reg = &port->bmi_regs->oh.fmbm_ofsdm;
        break;
    default:
        return -EINVAL;
    }

    iowrite32be(discard_mask, discard_mask_reg);
    return 0;
}
