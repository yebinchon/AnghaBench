#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {int mode; } ;
typedef  TYPE_1__ pps_params_t ;
struct TYPE_6__ {scalar_t__ assert_sequence; scalar_t__ clear_sequence; int /*<<< orphan*/  clear_timestamp; int /*<<< orphan*/  assert_timestamp; } ;
typedef  TYPE_2__ pps_info_t ;
typedef  int /*<<< orphan*/  pps_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PPS_CAPTUREASSERT ; 
 int PPS_CAPTUREBOTH ; 
 int PPS_ECHOASSERT ; 
 int /*<<< orphan*/  PPS_TSFMT_TSPEC ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC4 (int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,struct timespec*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int
FUNC9(int argc, char **argv)
{
	int fd;
	pps_info_t pi;
	pps_params_t pp;
	pps_handle_t ph;
	int i, mode;
	u_int olda, oldc;
	double d = 0;
	struct timespec to;

	if (argc < 2)
		argv[1] = "/dev/cuaa1";
	FUNC3(stdout, 0);
	fd = FUNC2(argv[1], O_RDONLY);
	if (fd < 0) 
		FUNC1(1, argv[1]);
	i = FUNC4(fd, &ph);
	if (i < 0)
		FUNC1(1, "time_pps_create");

	i = FUNC6(ph, &mode);
	if (i < 0)
		FUNC1(1, "time_pps_getcap");

	pp.mode = PPS_CAPTUREASSERT | PPS_ECHOASSERT;
	pp.mode = PPS_CAPTUREBOTH;
	/* pp.mode = PPS_CAPTUREASSERT; */

	i = FUNC7(ph, &pp);
	if (i < 0)
		FUNC1(1, "time_pps_setparams");

	while (1) {
		to.tv_nsec = 0;
		to.tv_sec = 0;
		i = FUNC5(ph, PPS_TSFMT_TSPEC, &pi, &to);
		if (i < 0)
			FUNC1(1, "time_pps_fetch");
		if (olda == pi.assert_sequence &&
		    oldc == pi.clear_sequence) {
			FUNC8(10000);
			continue;
		}

		FUNC0(&pi.assert_timestamp, &pi.clear_timestamp,
			pi.assert_sequence, pi.clear_sequence);
		olda = pi.assert_sequence;
		oldc = pi.clear_sequence;
	}

	return(0);
}