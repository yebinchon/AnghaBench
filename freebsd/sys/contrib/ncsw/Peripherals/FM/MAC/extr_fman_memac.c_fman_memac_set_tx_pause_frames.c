
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct memac_regs {int * pause_thresh; int * pause_quanta; int command_config; int tx_fifo_sections; } ;


 int CMD_CFG_PFC_MODE ;
 int GET_TX_EMPTY_DEFAULT_VALUE (int) ;
 int GET_TX_EMPTY_PFC_VALUE (int) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_memac_set_tx_pause_frames(struct memac_regs *regs,
                uint8_t priority,
                uint16_t pause_time,
                uint16_t thresh_time)
{
    uint32_t tmp;

 tmp = ioread32be(&regs->tx_fifo_sections);

 if (priority == 0xff) {
  GET_TX_EMPTY_DEFAULT_VALUE(tmp);
  iowrite32be(tmp, &regs->tx_fifo_sections);

  tmp = ioread32be(&regs->command_config);
  tmp &= ~CMD_CFG_PFC_MODE;
  priority = 0;
 } else {
  GET_TX_EMPTY_PFC_VALUE(tmp);
  iowrite32be(tmp, &regs->tx_fifo_sections);

  tmp = ioread32be(&regs->command_config);
  tmp |= CMD_CFG_PFC_MODE;
    }

    iowrite32be(tmp, &regs->command_config);

    tmp = ioread32be(&regs->pause_quanta[priority / 2]);
    if (priority % 2)
        tmp &= 0x0000FFFF;
    else
        tmp &= 0xFFFF0000;
    tmp |= ((uint32_t)pause_time << (16 * (priority % 2)));
    iowrite32be(tmp, &regs->pause_quanta[priority / 2]);

    tmp = ioread32be(&regs->pause_thresh[priority / 2]);
    if (priority % 2)
            tmp &= 0x0000FFFF;
    else
            tmp &= 0xFFFF0000;
    tmp |= ((uint32_t)thresh_time<<(16 * (priority % 2)));
    iowrite32be(tmp, &regs->pause_thresh[priority / 2]);
}
