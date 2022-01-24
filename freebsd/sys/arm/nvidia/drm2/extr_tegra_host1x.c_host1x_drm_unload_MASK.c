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
struct host1x_softc {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct host1x_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct host1x_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int
FUNC5(struct drm_device *drm_dev)
{
	struct host1x_softc *sc;
	int rv;

	sc = FUNC0(drm_dev->dev);

	FUNC1(drm_dev);
	FUNC4(drm_dev);
	FUNC2(drm_dev);

	rv = FUNC3(sc);
	if (rv < 0)
		return (rv);
	return (0);
}