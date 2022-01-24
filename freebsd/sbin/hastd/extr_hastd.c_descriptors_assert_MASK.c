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
struct stat {scalar_t__ st_mode; } ;
struct hast_resource {scalar_t__ hr_role; int /*<<< orphan*/  hr_name; int /*<<< orphan*/ * hr_remoteout; int /*<<< orphan*/ * hr_remotein; int /*<<< orphan*/ * hr_conn; int /*<<< orphan*/ * hr_ctrl; int /*<<< orphan*/ * hr_event; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ mode_t ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 scalar_t__ HAST_ROLE_PRIMARY ; 
 scalar_t__ HAST_ROLE_SECONDARY ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 scalar_t__ S_IFSOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  _SC_OPEN_MAX ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int,...) ; 
 char* FUNC11 (scalar_t__) ; 
 long FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(const struct hast_resource *res, int pjdlogmode)
{
	char msg[256];
	struct stat sb;
	long maxfd;
	bool isopen;
	mode_t mode;
	int fd;

	/*
	 * At this point descriptor to syslog socket is closed, so if we want
	 * to log assertion message, we have to first store it in 'msg' local
	 * buffer and then open syslog socket and log it.
	 */
	msg[0] = '\0';

	maxfd = FUNC12(_SC_OPEN_MAX);
	if (maxfd == -1) {
		FUNC6(pjdlogmode);
		FUNC7("[%s] (%s) ", res->hr_name,
		    FUNC9(res->hr_role));
		FUNC4(LOG_WARNING, "sysconf(_SC_OPEN_MAX) failed");
		FUNC5();
		maxfd = 16384;
	}
	for (fd = 0; fd <= maxfd; fd++) {
		if (FUNC3(fd, &sb) == 0) {
			isopen = true;
			mode = sb.st_mode;
		} else if (errno == EBADF) {
			isopen = false;
			mode = 0;
		} else {
			(void)FUNC10(msg, sizeof(msg),
			    "Unable to fstat descriptor %d: %s", fd,
			    FUNC11(errno));
			break;
		}
		if (fd == STDIN_FILENO || fd == STDOUT_FILENO ||
		    fd == STDERR_FILENO) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (%s) is closed, but should be open.",
				    fd, (fd == STDIN_FILENO ? "stdin" :
				    (fd == STDOUT_FILENO ? "stdout" : "stderr")));
				break;
			}
		} else if (fd == FUNC8(res->hr_event)) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (event) is closed, but should be open.",
				    fd);
				break;
			}
			if (!FUNC1(mode)) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (event) is %s, but should be %s.",
				    fd, FUNC2(mode), FUNC2(S_IFSOCK));
				break;
			}
		} else if (fd == FUNC8(res->hr_ctrl)) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (ctrl) is closed, but should be open.",
				    fd);
				break;
			}
			if (!FUNC1(mode)) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (ctrl) is %s, but should be %s.",
				    fd, FUNC2(mode), FUNC2(S_IFSOCK));
				break;
			}
		} else if (res->hr_role == HAST_ROLE_PRIMARY &&
		    fd == FUNC8(res->hr_conn)) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (conn) is closed, but should be open.",
				    fd);
				break;
			}
			if (!FUNC1(mode)) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (conn) is %s, but should be %s.",
				    fd, FUNC2(mode), FUNC2(S_IFSOCK));
				break;
			}
		} else if (res->hr_role == HAST_ROLE_SECONDARY &&
		    res->hr_conn != NULL &&
		    fd == FUNC8(res->hr_conn)) {
			if (isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (conn) is open, but should be closed.",
				    fd);
				break;
			}
		} else if (res->hr_role == HAST_ROLE_SECONDARY &&
		    fd == FUNC8(res->hr_remotein)) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (remote in) is closed, but should be open.",
				    fd);
				break;
			}
			if (!FUNC1(mode)) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (remote in) is %s, but should be %s.",
				    fd, FUNC2(mode), FUNC2(S_IFSOCK));
				break;
			}
		} else if (res->hr_role == HAST_ROLE_SECONDARY &&
		    fd == FUNC8(res->hr_remoteout)) {
			if (!isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (remote out) is closed, but should be open.",
				    fd);
				break;
			}
			if (!FUNC1(mode)) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d (remote out) is %s, but should be %s.",
				    fd, FUNC2(mode), FUNC2(S_IFSOCK));
				break;
			}
		} else {
			if (isopen) {
				(void)FUNC10(msg, sizeof(msg),
				    "Descriptor %d is open (%s), but should be closed.",
				    fd, FUNC2(mode));
				break;
			}
		}
	}
	if (msg[0] != '\0') {
		FUNC6(pjdlogmode);
		FUNC7("[%s] (%s) ", res->hr_name,
		    FUNC9(res->hr_role));
		FUNC0("%s", msg);
	}
}