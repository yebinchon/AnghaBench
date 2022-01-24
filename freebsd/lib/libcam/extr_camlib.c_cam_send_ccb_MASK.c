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
typedef  union ccb {int dummy; } ccb ;
struct cam_device {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMIOCOMMAND ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*) ; 

int
FUNC1(struct cam_device *device, union ccb *ccb)
{
	return(FUNC0(device->fd, CAMIOCOMMAND, ccb));
}