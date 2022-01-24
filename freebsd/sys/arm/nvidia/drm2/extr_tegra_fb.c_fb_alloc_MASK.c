#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tegra_fb {int nplanes; struct tegra_bo** planes; int /*<<< orphan*/  drm_fb; } ;
struct tegra_bo {int dummy; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_mode_fb_cmd2*) ; 
 int /*<<< orphan*/  fb_funcs ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_bo**,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct drm_device *drm, struct drm_mode_fb_cmd2 *mode_cmd,
    struct tegra_bo **planes, int num_planes, struct tegra_fb **res_fb)
{
	struct tegra_fb *fb;
	int i;
	int rv;

	fb = FUNC4(sizeof(*fb), DRM_MEM_DRIVER, M_WAITOK | M_ZERO);
	fb->planes = FUNC4(num_planes * sizeof(*fb->planes), DRM_MEM_DRIVER,
	    M_WAITOK | M_ZERO);
	fb->nplanes = num_planes;

	FUNC2(&fb->drm_fb, mode_cmd);
	for (i = 0; i < fb->nplanes; i++)
		fb->planes[i] = planes[i];
	rv = FUNC1(drm, &fb->drm_fb, &fb_funcs);
	if (rv < 0) {
		FUNC0(drm->dev,
		    "Cannot initialize frame buffer %d\n", rv);
		FUNC3(fb->planes, DRM_MEM_DRIVER);
		return (rv);
	}
	*res_fb = fb;
	return (0);
}