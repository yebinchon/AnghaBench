#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_6__ {int c_cflag; int* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
typedef  TYPE_1__ TTY ;

/* Variables and functions */
 int CLOCAL ; 
 int CS8 ; 
 int IBAUD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 

int
FUNC6(
	const char *device,	/* device name/link */
	int speed,		/* line speed */
	int trace		/* trace flags */	)
{
	TTY ttyb;
	int fd;
	int rc;
	int saved_errno;

	fd = FUNC5(device, O_RDWR, 0777);
	if (fd < 0)
		return -1;

	rc = FUNC3(fd, &ttyb);
	if (rc < 0) {
		saved_errno = errno;
		FUNC2(fd);
		errno = saved_errno;
		return -1;
	}
	ttyb.c_iflag = 0;	/* input modes */
	ttyb.c_oflag = 0;	/* output modes */
	ttyb.c_cflag = IBAUD|CS8|CLOCAL; /* control modes  (no read) */
	ttyb.c_lflag = 0;	/* local modes */
	ttyb.c_cc[VMIN] = 0;	/* min chars */
	ttyb.c_cc[VTIME] = 5;	/* receive timeout */
	FUNC0(&ttyb, (u_int)speed);
	FUNC1(&ttyb, (u_int)speed);
	rc = FUNC4(fd, TCSANOW, &ttyb);
	if (rc < 0) {
		saved_errno = errno;
		FUNC2(fd);
		errno = saved_errno;
		return -1;
	}
	return (fd);
}