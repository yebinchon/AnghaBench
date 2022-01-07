
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_info {int sync_ctrl; int sync_edge; int fdd; int bpp; int dma_burst_sz; int ac_bias_intrpt; int ac_bias; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;


 int am335x_read_property (int ,scalar_t__,char*,int *) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;

__attribute__((used)) static int
am335x_read_panel_info(device_t dev, phandle_t node, struct panel_info *panel)
{
 phandle_t panel_info_node;

 panel_info_node = ofw_bus_find_child(node, "panel-info");
 if (panel_info_node == 0)
  return (-1);

 am335x_read_property(dev, panel_info_node,
     "ac-bias", &panel->ac_bias);

 am335x_read_property(dev, panel_info_node,
     "ac-bias-intrpt", &panel->ac_bias_intrpt);

 am335x_read_property(dev, panel_info_node,
     "dma-burst-sz", &panel->dma_burst_sz);

 am335x_read_property(dev, panel_info_node,
     "bpp", &panel->bpp);

 am335x_read_property(dev, panel_info_node,
     "fdd", &panel->fdd);

 am335x_read_property(dev, panel_info_node,
     "sync-edge", &panel->sync_edge);

 am335x_read_property(dev, panel_info_node,
     "sync-ctrl", &panel->sync_ctrl);

 return (0);
}
