
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct fman_port {int type; TYPE_1__* bmi_regs; } ;
struct TYPE_4__ {int fmbm_rfne; } ;
struct TYPE_3__ {TYPE_2__ rx; } ;


 int BMI_NEXT_ENG_FD_BITS_SHIFT ;
 int EINVAL ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_port_modify_rx_fd_bits(struct fman_port *port,
        uint8_t rx_fd_bits,
        bool add)
{
    uint32_t tmp;

    switch (port->type) {
    case 129:
    case 128:
        break;
    default:
        return -EINVAL;
    }

    tmp = ioread32be(&port->bmi_regs->rx.fmbm_rfne);

    if (add)
        tmp |= (uint32_t)rx_fd_bits << BMI_NEXT_ENG_FD_BITS_SHIFT;
    else
        tmp &= ~((uint32_t)rx_fd_bits << BMI_NEXT_ENG_FD_BITS_SHIFT);

    iowrite32be(tmp, &port->bmi_regs->rx.fmbm_rfne);
    return 0;
}
