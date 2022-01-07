
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct fman_port {int type; size_t ext_pools_num; TYPE_2__* bmi_regs; } ;
struct TYPE_3__ {int * fmbm_acnt; } ;
struct TYPE_4__ {TYPE_1__ rx; } ;




 size_t FMAN_PORT_MAX_EXT_POOLS_NUM ;
 size_t fman_port_find_bpool (struct fman_port*,size_t) ;
 int iowrite32be (int ,int *) ;

void fman_port_set_bpool_counter(struct fman_port *port,
        uint8_t bpid,
        uint32_t value)
{
    uint8_t index;

    switch (port->type) {
    case 129:
    case 128:
        break;
    default:
        return;
    }


    index = fman_port_find_bpool(port, bpid);
    if (index == port->ext_pools_num || index == FMAN_PORT_MAX_EXT_POOLS_NUM)

        return;

    iowrite32be(value, &port->bmi_regs->rx.fmbm_acnt[index]);
}
