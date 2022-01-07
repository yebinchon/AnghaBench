
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct fman_port {int type; size_t ext_pools_num; TYPE_2__* bmi_regs; } ;
struct TYPE_3__ {int * fmbm_ebmpi; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;


 int BMI_EXT_BUF_POOL_EN_COUNTER ;
 int EINVAL ;


 size_t FMAN_PORT_MAX_EXT_POOLS_NUM ;
 size_t fman_port_find_bpool (struct fman_port*,size_t) ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

int fman_port_set_bpool_cnt_mode(struct fman_port *port,
        uint8_t bpid,
        bool enable)
{
    uint8_t index;
    uint32_t tmp;

    switch (port->type) {
    case 129:
    case 128:
        break;
    default:
        return -EINVAL;
    }


    index = fman_port_find_bpool(port, bpid);
    if (index == port->ext_pools_num || index == FMAN_PORT_MAX_EXT_POOLS_NUM)

        return -EINVAL;

    tmp = ioread32be(&port->bmi_regs->rx.fmbm_ebmpi[index]);

    if (enable)
        tmp |= BMI_EXT_BUF_POOL_EN_COUNTER;
    else
        tmp &= ~BMI_EXT_BUF_POOL_EN_COUNTER;

    iowrite32be(tmp, &port->bmi_regs->rx.fmbm_ebmpi[index]);
    return 0;
}
