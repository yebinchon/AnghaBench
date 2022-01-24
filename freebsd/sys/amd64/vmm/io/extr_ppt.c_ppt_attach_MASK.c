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
struct pptdev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pptdev*,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct pptdev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  num_pptdevs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pptdev_list ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct pptdev *ppt;

	ppt = FUNC1(dev);

	FUNC4(FUNC3(), FUNC5(dev));
	num_pptdevs++;
	FUNC0(&pptdev_list, ppt, next);
	ppt->dev = dev;

	if (bootverbose)
		FUNC2(dev, "attached\n");

	return (0);
}