
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {int type; TYPE_3__* bmi_regs; } ;
struct TYPE_5__ {int fmbm_ofsem; } ;
struct TYPE_4__ {int fmbm_rfsem; } ;
struct TYPE_6__ {TYPE_2__ oh; TYPE_1__ rx; } ;


 int EINVAL ;



 int iowrite32be (int ,int *) ;

int fman_port_set_err_mask(struct fman_port *port, uint32_t err_mask)
{
    uint32_t *err_mask_reg;


    switch (port->type) {
    case 129:
    case 128:
        err_mask_reg = &port->bmi_regs->rx.fmbm_rfsem;
        break;
    case 130:
        err_mask_reg = &port->bmi_regs->oh.fmbm_ofsem;
        break;
    default:
        return -EINVAL;
    }

    iowrite32be(err_mask, err_mask_reg);
    return 0;
}
