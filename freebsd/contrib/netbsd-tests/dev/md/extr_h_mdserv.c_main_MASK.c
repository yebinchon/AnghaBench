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
struct md_conf {int /*<<< orphan*/  md_type; int /*<<< orphan*/  md_size; int /*<<< orphan*/  md_addr; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int /*<<< orphan*/  MDSIZE ; 
 int /*<<< orphan*/  MD_SETCONF ; 
 int /*<<< orphan*/  MD_UMEM_SERVER ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  prober ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int FUNC9 (char*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,struct md_conf*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 

int
FUNC12(int argc, char *argv[])
{
	pthread_t pt;
	struct md_conf md;
	int fd, error;

	if (argc != 2)
		FUNC3(1);

	md.md_addr = FUNC1(1, MDSIZE);
	md.md_size = MDSIZE;
	md.md_type = MD_UMEM_SERVER;

	error = FUNC6();
	FUNC0(error, "rump_daemonize_begin");

	error = FUNC8();
	FUNC0(error, "rump_init");

	error = FUNC9("unix://commsock");
	FUNC0(error, "init server");

	if ((fd = FUNC11(argv[1], O_RDWR)) == -1)
		FUNC2(1, "open");

	/*
	 * Now, configuring the md driver also causes our process
	 * to start acting as the worker for the md.  Splitting it
	 * into two steps in the driver is not easy, since md is
	 * supposed to be unconfigured when the process dies
	 * (process may exit between calling ioctl1 and ioctl2).
	 * So, start a probe thread which attempts to read the md
	 * and declares the md as configured when the read is
	 * succesful.
	 */
	error = FUNC4(&pt, NULL, prober, argv[1]);
	FUNC0(error, "pthread_create");
	FUNC5(pt);

	if (FUNC10(fd, MD_SETCONF, &md) == -1) {
		FUNC7(errno);
		FUNC3(1);
	}

	return 0;
}