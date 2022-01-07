
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int polled; } ;
struct tegra_drm_encoder {TYPE_1__ connector; int * gpio_hpd; int * ddc; int * edid; int dev; } ;
struct edid {int dummy; } ;
typedef scalar_t__ phandle_t ;
typedef int ddc ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int ENXIO ;
 int M_OFWPROP ;
 int * OF_device_from_xref (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 int OF_getencprop_alloc (scalar_t__,char*,void**) ;
 int device_printf (int ,char*) ;
 int free (int *,int ) ;
 int gpio_pin_get_by_ofw_property (int ,scalar_t__,char*,int **) ;

int
tegra_drm_encoder_attach(struct tegra_drm_encoder *output, phandle_t node)
{
 int rv;
 phandle_t ddc;



 rv = OF_getencprop_alloc(node, "nvidia,edid",
     (void **)&output->edid);


 if ((rv >= 0) && (rv != sizeof(struct edid))) {
  device_printf(output->dev,
      "Malformed \"nvidia,edid\" property\n");
  if (output->edid != ((void*)0))
   free(output->edid, M_OFWPROP);
  return (ENXIO);
 }

 gpio_pin_get_by_ofw_property(output->dev, node, "nvidia,hpd-gpio",
     &output->gpio_hpd);
 ddc = 0;
 OF_getencprop(node, "nvidia,ddc-i2c-bus", &ddc, sizeof(ddc));
 if (ddc > 0)
  output->ddc = OF_device_from_xref(ddc);
 if ((output->edid == ((void*)0)) && (output->ddc == ((void*)0)))
  return (ENXIO);

 if (output->gpio_hpd != ((void*)0)) {
  output->connector.polled =

      DRM_CONNECTOR_POLL_DISCONNECT |
      DRM_CONNECTOR_POLL_CONNECT;
 }

 return (0);
}
