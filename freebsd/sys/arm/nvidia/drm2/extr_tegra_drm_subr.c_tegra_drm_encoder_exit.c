
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_encoder {scalar_t__ panel; } ;
struct tegra_drm {int dummy; } ;



int tegra_drm_encoder_exit(struct tegra_drm_encoder *output,
    struct tegra_drm *drm)
{

 if (output->panel) {

 }
 return (0);
}
