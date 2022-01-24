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
 int /*<<< orphan*/  SERIAL_GETREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ****) ; 
 int /*<<< orphan*/ **** mask ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7 (void)
{
#ifdef __linux__
	int fd;

	fd = FUNC4 ("/dev/serial/ctl0", 0);
	if (fd < 0) {
		FUNC5 ("/dev/serial/ctl0");
		FUNC1 (-1);
	}
	if (FUNC3 (fd, SERIAL_GETREGISTERED, mask) < 0) {
		FUNC5 ("getting list of channels");
		FUNC1 (-1);
	}
	FUNC0 (fd);
#else
	int fd, fd1, fd2, fd3, i;
	char buf [80];

	for (i=0, fd=-1; i<12 && fd<0; i++) {
		sprintf (buf, "/dev/cx%d", i*4);
		fd = open (buf, 0);
	}

	for (i=0, fd1=-1; i<3 && fd1<0; i++) {
		sprintf (buf, "/dev/ct%d", i*2);
		fd1 = open (buf, 0);
	}

	for (i=0, fd2=-1; i<3 && fd2<0; i++) {
		sprintf (buf, "/dev/cp%d", i*4);
		fd2 = open (buf, 0);
	}

	/* Try only one */
	for (i=0, fd3=-1; i<1 && fd3<0; i++) {
		sprintf (buf, "/dev/ce%d", i*4);
		fd3 = open (buf, 0);
	}

	if ((fd < 0) && (fd1 < 0) && (fd2 < 0) && (fd3 < 0)) {
		fprintf (stderr, "No Cronyx adapters installed\n");
		exit (-1);
	}

	if (fd >= 0) {
		if (ioctl (fd, SERIAL_GETREGISTERED, &mask) < 0) {
			perror ("getting list of channels");
			exit (-1);
		}
		close (fd);
	}

	if (fd1 >= 0) {
		if (ioctl (fd1, SERIAL_GETREGISTERED, (mask+16)) < 0) {
			perror ("getting list of channels");
			exit (-1);
		}
		close (fd1);
	}

	if (fd2 >= 0) {
		if (ioctl (fd2, SERIAL_GETREGISTERED, (mask+32)) < 0) {
			perror ("getting list of channels");
			exit (-1);
		}
		close (fd2);
	}

	if (fd3 >= 0) {
		if (ioctl (fd3, SERIAL_GETREGISTERED, (mask+48)) < 0) {
			perror ("getting list of channels");
			exit (-1);
		}
		close (fd3);
	}
#endif
}