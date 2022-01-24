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
struct fb_info {int dummy; } ;
struct bcmsc_softc {struct fb_info info; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct bcmsc_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct fb_info *
FUNC1(device_t dev)
{
	struct bcmsc_softc *sc;

	sc = FUNC0(dev);

	return (&sc->info);
}