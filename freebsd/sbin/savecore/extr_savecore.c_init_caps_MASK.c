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
typedef  int /*<<< orphan*/  cap_rights_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IOCTL ; 
 int /*<<< orphan*/  CAP_PREAD ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  FA_OPEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * capfa ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * capsyslog ; 
 scalar_t__ checkfor ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ keep ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC10(int argc, char **argv)
{
	cap_rights_t rights;
	cap_channel_t *capcas;

	capcas = FUNC1();
	if (capcas == NULL) {
		FUNC9(LOG_ERR, "cap_init(): %m");
		FUNC7(1);
	}
	/*
	 * The fileargs capability does not currently provide a way to limit
	 * ioctls.
	 */
	(void)FUNC2(&rights, CAP_PREAD, CAP_WRITE, CAP_IOCTL);
	capfa = FUNC8(argc, argv, checkfor || keep ? O_RDONLY : O_RDWR,
	    0, &rights, FA_OPEN);
	if (capfa == NULL) {
		FUNC9(LOG_ERR, "fileargs_init(): %m");
		FUNC7(1);
	}
	FUNC4();
	FUNC5();
	if (FUNC6() != 0) {
		FUNC9(LOG_ERR, "caph_enter_casper(): %m");
		FUNC7(1);
	}
	capsyslog = FUNC3(capcas, "system.syslog");
	if (capsyslog == NULL) {
		FUNC9(LOG_ERR, "cap_service_open(system.syslog): %m");
		FUNC7(1);
	}
	FUNC0(capcas);
}