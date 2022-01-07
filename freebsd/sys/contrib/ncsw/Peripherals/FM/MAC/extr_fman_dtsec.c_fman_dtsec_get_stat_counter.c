
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int tdrp; int tncl; int txpf; int tbca; int tmca; int tpkt; int tbyt; int tfcs; int rdrp; int rjbr; int rfrg; int rovr; int rund; int rcse; int rcde; int rflr; int raln; int rxpf; int rbca; int rmca; int rpkt; int rbyt; int trmgv; int trmax; int tr1k; int tr511; int tr255; int tr127; int tr64; } ;
typedef enum dtsec_stat_counters { ____Placeholder_dtsec_stat_counters } dtsec_stat_counters ;
 int ioread32be (int *) ;

uint32_t fman_dtsec_get_stat_counter(struct dtsec_regs *regs,
  enum dtsec_stat_counters reg_name)
{
 uint32_t ret_val;

 switch (reg_name) {
 case 131:
  ret_val = ioread32be(&regs->tr64);
  break;
 case 135:
  ret_val = ioread32be(&regs->tr127);
  break;
 case 133:
  ret_val = ioread32be(&regs->tr255);
  break;
 case 132:
  ret_val = ioread32be(&regs->tr511);
  break;
 case 134:
  ret_val = ioread32be(&regs->tr1k);
  break;
 case 130:
  ret_val = ioread32be(&regs->trmax);
  break;
 case 129:
  ret_val = ioread32be(&regs->trmgv);
  break;
 case 154:
  ret_val = ioread32be(&regs->rbyt);
  break;
 case 145:
  ret_val = ioread32be(&regs->rpkt);
  break;
 case 147:
  ret_val = ioread32be(&regs->rmca);
  break;
 case 155:
  ret_val = ioread32be(&regs->rbca);
  break;
 case 143:
  ret_val = ioread32be(&regs->rxpf);
  break;
 case 156:
  ret_val = ioread32be(&regs->raln);
  break;
 case 150:
  ret_val = ioread32be(&regs->rflr);
  break;
 case 153:
  ret_val = ioread32be(&regs->rcde);
  break;
 case 152:
  ret_val = ioread32be(&regs->rcse);
  break;
 case 144:
  ret_val = ioread32be(&regs->rund);
  break;
 case 146:
  ret_val = ioread32be(&regs->rovr);
  break;
 case 149:
  ret_val = ioread32be(&regs->rfrg);
  break;
 case 148:
  ret_val = ioread32be(&regs->rjbr);
  break;
 case 151:
  ret_val = ioread32be(&regs->rdrp);
  break;
 case 139:
  ret_val = ioread32be(&regs->tfcs);
  break;
 case 141:
  ret_val = ioread32be(&regs->tbyt);
  break;
 case 136:
  ret_val = ioread32be(&regs->tpkt);
  break;
 case 138:
  ret_val = ioread32be(&regs->tmca);
  break;
 case 142:
  ret_val = ioread32be(&regs->tbca);
  break;
 case 128:
  ret_val = ioread32be(&regs->txpf);
  break;
 case 137:
  ret_val = ioread32be(&regs->tncl);
  break;
 case 140:
  ret_val = ioread32be(&regs->tdrp);
  break;
 default:
  ret_val = 0;
 }

 return ret_val;
}
