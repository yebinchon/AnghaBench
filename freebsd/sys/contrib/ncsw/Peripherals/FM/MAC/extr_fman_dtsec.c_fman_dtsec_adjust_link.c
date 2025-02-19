
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int ecntrl; int maccfg2; } ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;
typedef enum enet_interface { ____Placeholder_enet_interface } enet_interface ;


 int DTSEC_ECNTRL_R100M ;
 int EINVAL ;
 int E_ENET_SPEED_100 ;
 int E_ENET_SPEED_1000 ;
 int MACCFG2_BYTE_MODE ;
 int MACCFG2_FULL_DUPLEX ;
 int MACCFG2_NIBBLE_MODE ;
 int UNUSED (int) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_dtsec_adjust_link(struct dtsec_regs *regs,
  enum enet_interface iface_mode,
  enum enet_speed speed, bool full_dx)
{
 uint32_t tmp;

 UNUSED(iface_mode);

 if ((speed == E_ENET_SPEED_1000) && !full_dx)
  return -EINVAL;

 tmp = ioread32be(&regs->maccfg2);
 if (!full_dx)
  tmp &= ~MACCFG2_FULL_DUPLEX;
 else
  tmp |= MACCFG2_FULL_DUPLEX;

 tmp &= ~(MACCFG2_NIBBLE_MODE | MACCFG2_BYTE_MODE);
 if (speed < E_ENET_SPEED_1000)
  tmp |= MACCFG2_NIBBLE_MODE;
 else if (speed == E_ENET_SPEED_1000)
  tmp |= MACCFG2_BYTE_MODE;
 iowrite32be(tmp, &regs->maccfg2);

 tmp = ioread32be(&regs->ecntrl);
 if (speed == E_ENET_SPEED_100)
  tmp |= DTSEC_ECNTRL_R100M;
 else
  tmp &= ~DTSEC_ECNTRL_R100M;
 iowrite32be(tmp, &regs->ecntrl);

 return 0;
}
