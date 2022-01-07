
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_bmi_regs {int * fmbm_arb; } ;


 int iowrite32be (int,int *) ;

void fman_set_ports_bandwidth(struct fman_bmi_regs *bmi_rg, uint8_t *weights)
{
 int i;
 uint8_t shift;
 uint32_t tmp = 0;

 for (i = 0; i < 64; i++) {
  if (weights[i] > 1) {


   shift = (uint8_t)(32 - 4 * ((i % 8) + 1));
   tmp |= ((weights[i] - 1) << shift);
  }
  if (i % 8 == 7) {
   iowrite32be(tmp, &bmi_rg->fmbm_arb[i / 8]);
   tmp = 0;
  }
 }
}
