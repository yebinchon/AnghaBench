
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_softc {int dummy; } ;
struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int num_crtc; int * funcs; } ;
struct drm_device {int irq_enabled; int max_vblank_count; int vblank_disable_allowed; TYPE_1__ mode_config; int dev; } ;


 struct host1x_softc* device_get_softc (int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_cleanup (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int host1x_drm_exit (struct host1x_softc*) ;
 int host1x_drm_init (struct host1x_softc*) ;
 int mode_config_funcs ;
 int tegra_drm_fb_destroy (struct drm_device*) ;
 int tegra_drm_fb_init (struct drm_device*) ;

__attribute__((used)) static int
host1x_drm_load(struct drm_device *drm_dev, unsigned long flags)
{
 struct host1x_softc *sc;
 int rv;

 sc = device_get_softc(drm_dev->dev);

 drm_mode_config_init(drm_dev);
 drm_dev->mode_config.min_width = 32;
 drm_dev->mode_config.min_height = 32;
 drm_dev->mode_config.max_width = 4096;
 drm_dev->mode_config.max_height = 4096;
 drm_dev->mode_config.funcs = &mode_config_funcs;

 rv = host1x_drm_init(sc);
 if (rv != 0)
  goto fail_host1x;

 drm_dev->irq_enabled = 1;
 drm_dev->max_vblank_count = 0xffffffff;
 drm_dev->vblank_disable_allowed = 1;

 rv = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
 if (rv != 0)
  goto fail_vblank;

 drm_mode_config_reset(drm_dev);

 rv = tegra_drm_fb_init(drm_dev);
 if (rv != 0)
  goto fail_fb;
 drm_kms_helper_poll_init(drm_dev);

 return (0);

fail_fb:
 tegra_drm_fb_destroy(drm_dev);
 drm_vblank_cleanup(drm_dev);
fail_vblank:
 host1x_drm_exit(sc);
fail_host1x:
 drm_mode_config_cleanup(drm_dev);

 return (rv);
}
