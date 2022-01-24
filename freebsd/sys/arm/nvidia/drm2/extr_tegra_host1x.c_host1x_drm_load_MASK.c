#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct host1x_softc {int dummy; } ;
struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int /*<<< orphan*/  num_crtc; int /*<<< orphan*/ * funcs; } ;
struct drm_device {int irq_enabled; int max_vblank_count; int vblank_disable_allowed; TYPE_1__ mode_config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct host1x_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct host1x_softc*) ; 
 int FUNC8 (struct host1x_softc*) ; 
 int /*<<< orphan*/  mode_config_funcs ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int FUNC10 (struct drm_device*) ; 

__attribute__((used)) static int
FUNC11(struct drm_device *drm_dev, unsigned long flags)
{
	struct host1x_softc *sc;
	int rv;

	sc = FUNC0(drm_dev->dev);

	FUNC3(drm_dev);
	drm_dev->mode_config.min_width = 32;
	drm_dev->mode_config.min_height = 32;
	drm_dev->mode_config.max_width = 4096;
	drm_dev->mode_config.max_height = 4096;
	drm_dev->mode_config.funcs = &mode_config_funcs;

	rv = FUNC8(sc);
	if (rv != 0)
		goto fail_host1x;

	drm_dev->irq_enabled = true;
	drm_dev->max_vblank_count = 0xffffffff;
	drm_dev->vblank_disable_allowed = true;

	rv = FUNC6(drm_dev, drm_dev->mode_config.num_crtc);
	if (rv != 0)
		goto fail_vblank;

	FUNC4(drm_dev);

	rv = FUNC10(drm_dev);
	if (rv != 0)
		goto fail_fb;
	FUNC1(drm_dev);

	return (0);

fail_fb:
	FUNC9(drm_dev);
	FUNC5(drm_dev);
fail_vblank:
	FUNC7(sc);
fail_host1x:
	FUNC2(drm_dev);

	return (rv);
}