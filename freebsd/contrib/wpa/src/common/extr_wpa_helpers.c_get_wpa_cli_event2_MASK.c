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
typedef  scalar_t__ time_t ;
struct wpa_ctrl {int dummy; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int default_timeout ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 char* FUNC4 (char*,char) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int FUNC9 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC10 (struct wpa_ctrl*,char*,size_t*) ; 

int FUNC11(struct wpa_ctrl *mon,
		       const char *event, const char *event2,
		       char *buf, size_t buf_size)
{
	int fd, ret;
	fd_set rfd;
	char *pos;
	struct timeval tv;
	time_t start, now;

	FUNC2("Waiting for wpa_cli event %s\n", event);
	fd = FUNC9(mon);
	if (fd < 0)
		return -1;

	FUNC8(&start);
	while (1) {
		size_t len;

		FUNC1(&rfd);
		FUNC0(fd, &rfd);
		tv.tv_sec = default_timeout;
		tv.tv_usec = 0;
		ret = FUNC3(fd + 1, &rfd, NULL, NULL, &tv);
		if (ret == 0) {
			FUNC2("Timeout on waiting for event %s\n", event);
			return -1;
		}
		if (ret < 0) {
			FUNC2("select: %s\n", FUNC5(errno));
			return -1;
		}
		len = buf_size;
		if (FUNC10(mon, buf, &len) < 0) {
			FUNC2("Failure while waiting for event %s\n", event);
			return -1;
		}
		if (len == buf_size)
			len--;
		buf[len] = '\0';

		pos = FUNC4(buf, '>');
		if (pos &&
		    (FUNC7(pos + 1, event, FUNC6(event)) == 0 ||
		     (event2 &&
		      FUNC7(pos + 1, event2, FUNC6(event2)) == 0)))
			return 0; /* Event found */

		FUNC8(&now);
		if ((int) (now - start) > default_timeout) {
			FUNC2("Timeout on waiting for event %s\n", event);
			return -1;
		}
	}
}