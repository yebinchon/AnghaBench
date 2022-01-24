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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC2(device_t dev, device_t child, int *domain)
{
	int d;

	d = FUNC0(child);
	if (d >= 0) {
		*domain = d;
		return (0);
	}
	if (d == -1)
		return (ENOENT);

	/* No _PXM node; go up a level */
	return (FUNC1(dev, child, domain));
}