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
typedef  int gpio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOMAXPIN ; 
 int GPIO_INVALID_HANDLE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 

gpio_handle_t
FUNC3(const char *device)
{
	int fd, maxpins;
	int serr;

	fd = FUNC2(device, O_RDONLY);
	if (fd < 0)
		return (GPIO_INVALID_HANDLE);
	/*
	 * Check whether a simple ioctl works.
	 */
	if (FUNC1(fd, GPIOMAXPIN, &maxpins) < 0) {
		serr = errno;
		FUNC0(fd);
		errno = serr;
		return (GPIO_INVALID_HANDLE);
	}

	return (fd);
}