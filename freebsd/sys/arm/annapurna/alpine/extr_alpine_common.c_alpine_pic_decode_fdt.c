
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* FDT_MAP_IRQ (int ,int*) ;
 int arm_config_irq (int,int,int) ;
 int gic_decode_fdt (int ,int *,int*,int*,int*) ;
 int stub1 (int,int,int) ;

__attribute__((used)) static int
alpine_pic_decode_fdt(uint32_t iparent, uint32_t *intr, int *interrupt,
    int *trig, int *pol)
{
 int rv = 0;

 rv = gic_decode_fdt(iparent, intr, interrupt, trig, pol);
 if (rv == 0) {

  interrupt = FDT_MAP_IRQ(iparent, interrupt);


  if (arm_config_irq)
   (*arm_config_irq)(*interrupt, *trig, *pol);
 }
 return (rv);
}
