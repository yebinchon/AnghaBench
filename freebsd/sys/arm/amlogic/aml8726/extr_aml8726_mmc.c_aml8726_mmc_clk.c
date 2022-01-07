
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int prop ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;


 int OF_getencprop (int ,char*,scalar_t__*,int) ;
 int OF_node_from_xref (scalar_t__) ;

__attribute__((used)) static unsigned int
aml8726_mmc_clk(phandle_t node)
{
 pcell_t prop;
 ssize_t len;
 phandle_t clk_node;

 len = OF_getencprop(node, "clocks", &prop, sizeof(prop));
 if ((len / sizeof(prop)) != 1 || prop == 0 ||
     (clk_node = OF_node_from_xref(prop)) == 0)
  return (0);

 len = OF_getencprop(clk_node, "clock-frequency", &prop, sizeof(prop));
 if ((len / sizeof(prop)) != 1 || prop == 0)
  return (0);

 return ((unsigned int)prop);
}
