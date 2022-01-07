
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clknode {int dummy; } ;
typedef int device_t ;


 int clknode_init_parent_idx (struct clknode*,int ) ;

__attribute__((used)) static int
rk_usb2phy_clk_init(struct clknode *clk, device_t dev)
{

 clknode_init_parent_idx(clk, 0);
 return (0);
}
