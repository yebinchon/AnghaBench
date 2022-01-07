
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tgec_regs {int tx_ipg_len; } ;


 int TGEC_TX_IPG_LENGTH_MASK ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_tgec_set_erratum_tx_fifo_corruption_10gmac_a007(struct tgec_regs *regs)
{
 uint32_t tmp;


 tmp = (ioread32be(&regs->tx_ipg_len) & ~TGEC_TX_IPG_LENGTH_MASK) | 12;

 iowrite32be(tmp, &regs->tx_ipg_len);
}
