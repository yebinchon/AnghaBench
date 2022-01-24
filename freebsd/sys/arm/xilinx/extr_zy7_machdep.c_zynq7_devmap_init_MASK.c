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
typedef  int /*<<< orphan*/  platform_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZYNQ7_PSCTL_HWBASE ; 
 int /*<<< orphan*/  ZYNQ7_PSCTL_SIZE ; 
 int /*<<< orphan*/  ZYNQ7_PSIO_HWBASE ; 
 int /*<<< orphan*/  ZYNQ7_PSIO_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(platform_t plat)
{

	FUNC0(ZYNQ7_PSIO_HWBASE, ZYNQ7_PSIO_SIZE);
	FUNC0(ZYNQ7_PSCTL_HWBASE, ZYNQ7_PSCTL_SIZE);

	return (0);
}