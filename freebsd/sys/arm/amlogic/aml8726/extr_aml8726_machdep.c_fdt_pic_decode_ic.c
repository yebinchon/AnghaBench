
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int pcell_t ;


 int ENXIO ;
 int INTR_POLARITY_HIGH ;
 int INTR_TRIGGER_EDGE ;
 int fdt32_to_cpu (int ) ;
 int fdt_is_compatible_strict (int ,char*) ;

__attribute__((used)) static int
fdt_pic_decode_ic(phandle_t node, pcell_t *intr, int *interrupt, int *trig,
    int *pol)
{




 if (!fdt_is_compatible_strict(node, "amlogic,aml8726-pic"))
  return (ENXIO);

 *interrupt = fdt32_to_cpu(intr[1]);
 *trig = INTR_TRIGGER_EDGE;
 *pol = INTR_POLARITY_HIGH;

 return (0);
}
