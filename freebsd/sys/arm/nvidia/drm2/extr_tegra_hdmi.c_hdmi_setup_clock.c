
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tegra_drm_encoder {int dev; } ;
struct hdmi_softc {int dev; int clk_hdmi; int clk_parent; } ;
typedef int clk_t ;


 int DRM_DEBUG_KMS (char*,int) ;
 int HDMI_DC_CLOCK_MULTIPIER ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_freq (int ,int*) ;
 int clk_set_freq (int ,int,int ) ;
 int clk_set_parent_by_clk (int ,int ) ;
 struct hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
hdmi_setup_clock(struct tegra_drm_encoder *output, clk_t clk, uint64_t pclk)
{
 struct hdmi_softc *sc;
 uint64_t freq;
 int rv;

 sc = device_get_softc(output->dev);


 rv = clk_disable(sc->clk_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot disable 'hdmi' clock\n");
  return (rv);
 }
 rv = clk_disable(clk);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot disable display clock\n");
  return (rv);
 }


 freq = HDMI_DC_CLOCK_MULTIPIER * pclk;
 rv = clk_set_freq(sc->clk_parent, freq, 0);
 if (rv != 0) {
  device_printf(output->dev,
      "Cannot set display pixel frequency\n");
  return (rv);
 }


 rv = clk_set_parent_by_clk(clk, sc->clk_parent);
 if (rv != 0) {
  device_printf(output->dev, "Cannot set parent clock\n");
  return (rv);

 }
 rv = clk_set_freq(clk, freq, 0);
 if (rv != 0) {
  device_printf(output->dev,
      "Cannot set display controller frequency\n");
  return (rv);
 }
 rv = clk_set_freq(sc->clk_hdmi, pclk, 0);
 if (rv != 0) {
  device_printf(output->dev,
      "Cannot set display controller frequency\n");
  return (rv);
 }


 rv = clk_enable(clk);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable display clock\n");
  return (rv);
 }
 rv = clk_enable(sc->clk_hdmi);
 if (rv != 0) {
  device_printf(sc->dev, "Cannot enable 'hdmi' clock\n");
  return (rv);
 }

 rv = clk_get_freq(clk, &freq);
 if (rv != 0) {
  device_printf(output->dev,
      "Cannot get display controller frequency\n");
  return (rv);
 }

 DRM_DEBUG_KMS("DC frequency: %llu\n", freq);

 return (0);
}
