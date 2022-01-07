
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fman_port {int type; TYPE_3__* bmi_regs; } ;
struct TYPE_5__ {int fmbm_orlmts; } ;
struct TYPE_4__ {int fmbm_trlmts; } ;
struct TYPE_6__ {TYPE_2__ oh; TYPE_1__ tx; } ;


 int EINVAL ;



 int iowrite32be (int ,int *) ;

int fman_port_delete_rate_limiter(struct fman_port *port)
{
    uint32_t *rate_limit_scale_reg;

    switch (port->type) {
    case 129:
    case 128:
        rate_limit_scale_reg = &port->bmi_regs->tx.fmbm_trlmts;
        break;
    case 130:
        rate_limit_scale_reg = &port->bmi_regs->oh.fmbm_orlmts;
        break;
    default:
        return -EINVAL;
    }

    iowrite32be(0, rate_limit_scale_reg);
    return 0;
}
