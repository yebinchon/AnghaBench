
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int if_mode; } ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef enum enet_interface { ____Placeholder_enet_interface } enet_interface ;


 int E_ENET_IF_RGMII ;



 int IF_MODE_HD ;
 int IF_MODE_RGMII_10 ;
 int IF_MODE_RGMII_100 ;
 int IF_MODE_RGMII_1000 ;
 int IF_MODE_RGMII_AUTO ;
 int IF_MODE_RGMII_FD ;
 int IF_MODE_RGMII_SP_MASK ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_memac_adjust_link(struct memac_regs *regs,
        enum enet_interface iface_mode,
        enum enet_speed speed, bool full_dx)
{
    uint32_t tmp;

    tmp = ioread32be(&regs->if_mode);

    if (full_dx)
        tmp &= ~IF_MODE_HD;
    else
        tmp |= IF_MODE_HD;

    if (iface_mode == E_ENET_IF_RGMII) {

        tmp &= ~IF_MODE_RGMII_AUTO;
        tmp &= ~IF_MODE_RGMII_SP_MASK;

        if (full_dx)
            tmp |= IF_MODE_RGMII_FD;
        else
            tmp &= ~IF_MODE_RGMII_FD;

        switch (speed) {
        case 128:
            tmp |= IF_MODE_RGMII_1000;
            break;
        case 129:
            tmp |= IF_MODE_RGMII_100;
            break;
        case 130:
            tmp |= IF_MODE_RGMII_10;
            break;
        default:
            break;
        }
    }

    iowrite32be(tmp, &regs->if_mode);
}
