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
typedef  int uint32_t ;
struct videomode {scalar_t__ dot_clock; int hdisplay; int vdisplay; } ;

/* Variables and functions */
 int MAX_BANDWIDTH ; 
 scalar_t__ MAX_PIXEL_CLOCK ; 
 int FUNC0 (struct videomode const*) ; 
 int FUNC1 (struct videomode const*) ; 
 int FUNC2 (struct videomode const*) ; 
 int FUNC3 (struct videomode const*) ; 
 int FUNC4 (struct videomode const*) ; 
 int FUNC5 (struct videomode const*) ; 
 int FUNC6 (struct videomode const*) ; 

__attribute__((used)) static int
FUNC7(const struct videomode *mode)
{
	uint32_t hbp, hfp, hsw;
	uint32_t vbp, vfp, vsw;

	if (mode->dot_clock > MAX_PIXEL_CLOCK)
		return (0);

	if (mode->hdisplay & 0xf)
		return (0);

	if (mode->vdisplay > 2048)
		return (0);

	/* Check ranges for timing parameters */
	hbp = FUNC0(mode) - 1;
	hfp = FUNC1(mode) - 1;
	hsw = FUNC2(mode) - 1;
	vbp = FUNC3(mode);
	vfp = FUNC4(mode);
	vsw = FUNC5(mode) - 1;

	if (hbp > 0x3ff)
		return (0);
	if (hfp > 0x3ff)
		return (0);
	if (hsw > 0x3ff)
		return (0);

	if (vbp > 0xff)
		return (0);
	if (vfp > 0xff)
		return (0);
	if (vsw > 0x3f)
		return (0);
	if (mode->vdisplay*mode->hdisplay*FUNC6(mode) 
	    > MAX_BANDWIDTH)
		return (0);

	return (1);
}