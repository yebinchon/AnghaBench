
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int dummy; } ;
struct hdmi_softc {int output; } ;
typedef int device_t ;


 struct hdmi_softc* device_get_softc (int ) ;
 int tegra_drm_encoder_exit (int *,struct tegra_drm*) ;

__attribute__((used)) static int
hdmi_exit_client(device_t dev, device_t host1x, struct tegra_drm *drm)
{
 struct hdmi_softc *sc;

 sc = device_get_softc(dev);
 tegra_drm_encoder_exit(&sc->output, drm);
 return (0);
}
