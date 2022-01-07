
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct memac_regs {int dummy; } ;
typedef enum memac_counters { ____Placeholder_memac_counters } memac_counters ;
 int GET_MEMAC_CNTR_64 (int ) ;
 int r1023 ;
 int r127 ;
 int r1518 ;
 int r1519x ;
 int r255 ;
 int r511 ;
 int r64 ;
 int raln ;
 int rbca ;
 int rdrp ;
 int rerr ;
 int rfrg ;
 int rjbr ;
 int rmca ;
 int roct ;
 int rovr ;
 int rpkt ;
 int ruca ;
 int rxpf ;
 int tbca ;
 int terr ;
 int tmca ;
 int toct ;
 int tuca ;
 int tund ;
 int txpf ;

uint64_t fman_memac_get_counter(struct memac_regs *regs,
                enum memac_counters reg_name)
{
    uint64_t ret_val;

    switch (reg_name) {
    case 147:
        ret_val = GET_MEMAC_CNTR_64(r64);
        break;
    case 152:
        ret_val = GET_MEMAC_CNTR_64(r127);
        break;
    case 149:
        ret_val = GET_MEMAC_CNTR_64(r255);
        break;
    case 148:
        ret_val = GET_MEMAC_CNTR_64(r511);
        break;
    case 153:
        ret_val = GET_MEMAC_CNTR_64(r1023);
        break;
    case 151:
        ret_val = GET_MEMAC_CNTR_64(r1518);
        break;
    case 150:
        ret_val = GET_MEMAC_CNTR_64(r1519x);
        break;
    case 142:
        ret_val = GET_MEMAC_CNTR_64(rfrg);
        break;
    case 141:
        ret_val = GET_MEMAC_CNTR_64(rjbr);
        break;
    case 144:
        ret_val = GET_MEMAC_CNTR_64(rdrp);
        break;
    case 146:
        ret_val = GET_MEMAC_CNTR_64(raln);
        break;
    case 129:
        ret_val = GET_MEMAC_CNTR_64(tund);
        break;
    case 138:
        ret_val = GET_MEMAC_CNTR_64(rovr);
        break;
    case 135:
        ret_val = GET_MEMAC_CNTR_64(rxpf);
        break;
    case 128:
        ret_val = GET_MEMAC_CNTR_64(txpf);
        break;
    case 139:
        ret_val = GET_MEMAC_CNTR_64(roct);
        break;
    case 140:
        ret_val = GET_MEMAC_CNTR_64(rmca);
        break;
    case 145:
        ret_val = GET_MEMAC_CNTR_64(rbca);
        break;
    case 137:
        ret_val = GET_MEMAC_CNTR_64(rpkt);
        break;
    case 136:
        ret_val = GET_MEMAC_CNTR_64(ruca);
        break;
    case 143:
        ret_val = GET_MEMAC_CNTR_64(rerr);
        break;
    case 131:
        ret_val = GET_MEMAC_CNTR_64(toct);
        break;
    case 132:
        ret_val = GET_MEMAC_CNTR_64(tmca);
        break;
    case 134:
        ret_val = GET_MEMAC_CNTR_64(tbca);
        break;
    case 130:
        ret_val = GET_MEMAC_CNTR_64(tuca);
        break;
    case 133:
        ret_val = GET_MEMAC_CNTR_64(terr);
        break;
    default:
        ret_val = 0;
    }

    return ret_val;
}
