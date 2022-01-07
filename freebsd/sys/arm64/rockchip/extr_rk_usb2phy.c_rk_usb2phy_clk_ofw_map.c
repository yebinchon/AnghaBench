
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct clknode {int dummy; } ;
struct clkdom {int dummy; } ;
typedef int phandle_t ;


 int ENXIO ;
 int ERANGE ;
 struct clknode* clknode_find_by_id (struct clkdom*,int ) ;

__attribute__((used)) static int
rk_usb2phy_clk_ofw_map(struct clkdom *clkdom, uint32_t ncells,
    phandle_t *cells, struct clknode **clk)
{

 if (ncells != 0)
  return (ERANGE);

 *clk = clknode_find_by_id(clkdom, 0);

 if (*clk == ((void*)0))
  return (ENXIO);
 return (0);
}
