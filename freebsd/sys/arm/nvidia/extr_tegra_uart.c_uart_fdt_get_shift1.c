
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shift ;
typedef int phandle_t ;
typedef int pcell_t ;


 scalar_t__ OF_getencprop (int ,char*,int*,int) ;

__attribute__((used)) static int
uart_fdt_get_shift1(phandle_t node)
{
 pcell_t shift;

 if ((OF_getencprop(node, "reg-shift", &shift, sizeof(shift))) <= 0)
  shift = 2;
 return ((int)shift);
}
