
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tegra_drm {int drm_dev; } ;
struct TYPE_11__ {int possible_crtcs; } ;
struct TYPE_10__ {int dpms; } ;
struct TYPE_9__ {TYPE_4__ encoder; TYPE_3__ connector; int * setup_clock; } ;
struct hdmi_softc {TYPE_1__ output; int dev; struct tegra_drm* drm; } ;
typedef int phandle_t ;
typedef int device_t ;


 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_TMDS ;
 int ENXIO ;
 struct hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int drm_connector_helper_add (TYPE_3__*,int *) ;
 int drm_connector_init (int *,TYPE_3__*,int *,int ) ;
 int drm_encoder_helper_add (TYPE_4__*,int *) ;
 int drm_encoder_init (int *,TYPE_4__*,int *,int ) ;
 int drm_mode_connector_attach_encoder (TYPE_3__*,TYPE_4__*) ;
 int hdmi_connector_funcs ;
 int hdmi_connector_helper_funcs ;
 int hdmi_encoder_funcs ;
 int hdmi_encoder_helper_funcs ;
 int hdmi_setup_clock ;
 int ofw_bus_get_node (int ) ;
 int tegra_drm_encoder_attach (TYPE_1__*,int ) ;
 int tegra_drm_encoder_init (TYPE_1__*,struct tegra_drm*) ;

__attribute__((used)) static int
hdmi_init_client(device_t dev, device_t host1x, struct tegra_drm *drm)
{
 struct hdmi_softc *sc;
 phandle_t node;
 int rv;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(sc->dev);
 sc->drm = drm;
 sc->output.setup_clock = &hdmi_setup_clock;

 rv = tegra_drm_encoder_attach(&sc->output, node);
 if (rv != 0) {
  device_printf(dev, "Cannot attach output connector\n");
  return(ENXIO);
 }


 drm_connector_init(&drm->drm_dev, &sc->output.connector,
    &hdmi_connector_funcs, DRM_MODE_CONNECTOR_HDMIA);

 drm_connector_helper_add(&sc->output.connector,
     &hdmi_connector_helper_funcs);

 sc->output.connector.dpms = DRM_MODE_DPMS_OFF;

 drm_encoder_init(&drm->drm_dev, &sc->output.encoder,
     &hdmi_encoder_funcs, DRM_MODE_ENCODER_TMDS);

 drm_encoder_helper_add(&sc->output.encoder, &hdmi_encoder_helper_funcs);

 drm_mode_connector_attach_encoder(&sc->output.connector,
   &sc->output.encoder);

 rv = tegra_drm_encoder_init(&sc->output, drm);
 if (rv < 0) {
  device_printf(sc->dev, "Unable to init HDMI output\n");
  return (rv);
 }
 sc->output.encoder.possible_crtcs = 0x3;
 return (0);
}
