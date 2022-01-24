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

/* Variables and functions */
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  SERIAL_GETNAME ; 
 int adapter_type ; 
 char* chan_name ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char**) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC6 (int num)
{
	char device [80];
	int fd;

#ifdef __linux__
	FUNC5 (device, "/dev/serial/ctl%d", num);
#else
	switch (adapter_type) {
	case 0:
		sprintf (device, "/dev/cx%d", num);
		break;
	case 1:
		sprintf (device, "/dev/ct%d", num);
		break;
	case 2:
		sprintf (device, "/dev/cp%d", num);
		break;
	case 3:
		sprintf (device, "/dev/ce%d", num);
		break;
	}
#endif
	fd = FUNC3 (device, 0);
	if (fd < 0) {
		if (errno == ENODEV)
			FUNC1 (stderr, "chan%d: not configured\n", num);
		else
			FUNC4 (device);
		FUNC0 (-1);
	}
#ifdef __linux__
	if (FUNC2 (fd, SERIAL_GETNAME, &chan_name) < 0)
		FUNC5 (chan_name, "chan%d", num);
#else
	switch (adapter_type) {
	case 0: sprintf (chan_name, "cx%d", num); break;
	case 1: sprintf (chan_name, "ct%d", num); break;
	case 2: sprintf (chan_name, "cp%d", num); break;
	case 3: sprintf (chan_name, "ce%d", num); break;
	}
#endif
	return fd;
}