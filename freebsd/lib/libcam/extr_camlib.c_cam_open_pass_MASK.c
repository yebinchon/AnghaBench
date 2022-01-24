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
struct cam_device {int dummy; } ;

/* Variables and functions */
 struct cam_device* FUNC0 (char const*,int,struct cam_device*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct cam_device *
FUNC1(const char *path, int flags, struct cam_device *device)
{
	return(FUNC0(path, flags, device, path, NULL, 0));
}