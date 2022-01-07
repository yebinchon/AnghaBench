
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_info {int vsync_active; int hsync_active; int pixelclk_active; int panel_pxl_clk; int panel_vsw; int panel_vbp; int panel_vfp; int panel_hsw; int panel_hbp; int panel_hfp; int panel_height; int panel_width; } ;
typedef scalar_t__ phandle_t ;
typedef int native ;
typedef int device_t ;


 scalar_t__ OF_node_from_xref (scalar_t__) ;
 int OF_searchencprop (scalar_t__,char*,scalar_t__*,int) ;
 int am335x_read_property (int ,scalar_t__,char*,int *) ;
 int device_printf (int ,char*) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;

__attribute__((used)) static int
am335x_read_timing(device_t dev, phandle_t node, struct panel_info *panel)
{
 int error;
 phandle_t timings_node, timing_node, native;

 timings_node = ofw_bus_find_child(node, "display-timings");
 if (timings_node == 0) {
  device_printf(dev, "no \"display-timings\" node\n");
  return (-1);
 }

 if (OF_searchencprop(timings_node, "native-mode", &native,
     sizeof(native)) == -1) {
  device_printf(dev, "no \"native-mode\" reference in \"timings\" node\n");
  return (-1);
 }

 timing_node = OF_node_from_xref(native);

 error = 0;
 if ((error = am335x_read_property(dev, timing_node,
     "hactive", &panel->panel_width)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "vactive", &panel->panel_height)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "hfront-porch", &panel->panel_hfp)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "hback-porch", &panel->panel_hbp)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "hsync-len", &panel->panel_hsw)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "vfront-porch", &panel->panel_vfp)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "vback-porch", &panel->panel_vbp)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "vsync-len", &panel->panel_vsw)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "clock-frequency", &panel->panel_pxl_clk)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "pixelclk-active", &panel->pixelclk_active)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "hsync-active", &panel->hsync_active)))
  goto out;

 if ((error = am335x_read_property(dev, timing_node,
     "vsync-active", &panel->vsync_active)))
  goto out;

out:
 return (error);
}
