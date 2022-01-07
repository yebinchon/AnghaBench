
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int boolean_t ;


 int ofw_bus_node_is_compatible (int ,char*) ;

__attribute__((used)) static boolean_t
alpine_validate_cpu(u_int id, phandle_t child, u_int addr_cell, pcell_t *reg)
{
 return ofw_bus_node_is_compatible(child, "arm,cortex-a15");
}
