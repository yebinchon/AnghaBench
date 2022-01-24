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
typedef  int uint32_t ;
struct pollfd {int fd; int events; char* revents; } ;
struct hv_vss_opt_msg {int status; int opt; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FS_VSS_DEV_NAME ; 
#define  HV_VSS_CHECK 130 
#define  HV_VSS_FREEZE 129 
#define  HV_VSS_THAW 128 
 int /*<<< orphan*/  INFTIM ; 
 int /*<<< orphan*/  IOCHVVSSREAD ; 
 int /*<<< orphan*/  IOCHVVSSWRITE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_USER ; 
 int /*<<< orphan*/  O_RDWR ; 
 int POLLIN ; 
 int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* VSS_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int VSS_SUCCESS ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int,int /*<<< orphan*/ ,struct hv_vss_opt_msg*) ; 
 int is_daemon ; 
 int is_debugging ; 
 int /*<<< orphan*/  FUNC9 (struct hv_vss_opt_msg*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int
FUNC17(int argc, char* argv[])
{
	struct hv_vss_opt_msg  userdata;

	struct pollfd hv_vss_poll_fd[1];
	uint32_t op;
	int ch, r, error;
	int hv_vss_dev_fd;

	while ((ch = FUNC6(argc, argv, "dnh")) != -1) {
		switch (ch) {
		case 'n':
			/* Run as regular process for debugging purpose. */
			is_daemon = 0;
			break;
		case 'd':
			/* Generate debugging output */
			is_debugging = 1;
			break;
		case 'h':
		default:
			FUNC16(argv[0]);
			break;
		}
	}

	FUNC11("HV_VSS", 0, LOG_USER);

	/* Become daemon first. */
	if (is_daemon == 1)
		FUNC3(1, 0);
	else
		FUNC1(LOG_DEBUG, "Run as regular process.\n");

	FUNC1(LOG_INFO, "HV_VSS starting; pid is: %d\n", FUNC7());

	FUNC9(&userdata, 0, sizeof(struct hv_vss_opt_msg));
	/* register the daemon */
	hv_vss_dev_fd = FUNC10(FUNC0(FS_VSS_DEV_NAME), O_RDWR);

	if (hv_vss_dev_fd < 0) {
		FUNC1(LOG_ERR, "Fail to open %s, error: %d %s\n",
		    FUNC0(FS_VSS_DEV_NAME), errno, FUNC14(errno));
		FUNC4(EXIT_FAILURE);
	}
	hv_vss_poll_fd[0].fd = hv_vss_dev_fd;
	hv_vss_poll_fd[0].events = POLLIN | POLLRDNORM;

	while (1) {
		r = FUNC13(hv_vss_poll_fd, 1, INFTIM);

		FUNC1(LOG_DEBUG, "poll returned r = %d, revent = 0x%x\n",
		    r, hv_vss_poll_fd[0].revents);

		if (r == 0 || (r < 0 && errno == EAGAIN) ||
		    (r < 0 && errno == EINTR)) {
			/* Nothing to read */
			continue;
		}

		if (r < 0) {
			/*
			 * For poll return failure other than EAGAIN,
			 * we want to exit.
			 */
			FUNC1(LOG_ERR, "Poll failed.\n");
			FUNC12("poll");
			FUNC4(EIO);
		}

		/* Read from character device */
		error = FUNC8(hv_vss_dev_fd, IOCHVVSSREAD, &userdata);
		if (error < 0) {
			FUNC1(LOG_ERR, "Read failed.\n");
			FUNC12("pread");
			FUNC4(EIO);
		}

		if (userdata.status != 0) {
			FUNC1(LOG_ERR, "data read error\n");
			continue;
		}

		/*
		 * We will use the KVP header information to pass back
		 * the error from this daemon. So, first save the op
		 * and pool info to local variables.
		 */

		op = userdata.opt;

		switch (op) {
		case HV_VSS_CHECK:
			error = FUNC2();
			break;
		case HV_VSS_FREEZE:
			error = FUNC5();
			break;
		case HV_VSS_THAW:
			error = FUNC15();
			break;
		default:
			FUNC1(LOG_ERR, "Illegal operation: %d\n", op);
			error = VSS_FAIL;
		}
		if (error)
			userdata.status = VSS_FAIL;
		else
			userdata.status = VSS_SUCCESS;
		error = FUNC8(hv_vss_dev_fd, IOCHVVSSWRITE, &userdata);
		if (error != 0) {
			FUNC1(LOG_ERR, "Fail to write to device\n");
			FUNC4(EXIT_FAILURE);
		} else {
			FUNC1(LOG_INFO, "Send response %d for %s to kernel\n",
			    userdata.status, op == HV_VSS_FREEZE ? "Freeze" :
			    (op == HV_VSS_THAW ? "Thaw" : "Check"));
		}
	}
}