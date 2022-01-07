
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct fman_port {int type; int fm_rev_maj; TYPE_3__* bmi_regs; } ;
struct TYPE_5__ {int * fmbm_ocgm; } ;
struct TYPE_4__ {int * fmbm_rcgm; } ;
struct TYPE_6__ {TYPE_2__ oh; TYPE_1__ rx; } ;


 int EINVAL ;



 int FMAN_PORT_CG_MAP_NUM ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

int fman_port_add_congestion_grps(struct fman_port *port,
        uint32_t grps_map[FMAN_PORT_CG_MAP_NUM])
{
    int i;
    uint32_t tmp, *grp_map_reg;
    uint8_t max_grp_map_num;

    switch (port->type) {
    case 129:
    case 128:
        if (port->fm_rev_maj == 4)
            max_grp_map_num = 1;
        else
            max_grp_map_num = FMAN_PORT_CG_MAP_NUM;
        grp_map_reg = port->bmi_regs->rx.fmbm_rcgm;
        break;
    case 130:
        max_grp_map_num = 1;
        if (port->fm_rev_maj != 4)
            return -EINVAL;
        grp_map_reg = port->bmi_regs->oh.fmbm_ocgm;
        break;
    default:
        return -EINVAL;
    }

    for (i = (max_grp_map_num - 1); i >= 0; i--) {
        if (grps_map[i] == 0)
            continue;
        tmp = ioread32be(&grp_map_reg[i]);
        tmp |= grps_map[i];
        iowrite32be(tmp, &grp_map_reg[i]);
    }

    return 0;
}
