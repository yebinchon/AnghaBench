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
struct timeval {scalar_t__ tv_sec; } ;
struct tac_handle {scalar_t__ fd; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct tac_handle*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,char*,size_t) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval const*,struct timeval*,struct timeval*) ; 

__attribute__((used)) static int
FUNC8(struct tac_handle *h, void *buf, size_t len,
    const struct timeval *deadline)
{
	char *ptr;

	ptr = (char *)buf;
	while (len > 0) {
		int n;

		n = FUNC4(h->fd, ptr, len);
		if (n == -1) {
			struct timeval tv;
			int nfds;

			if (errno != EAGAIN) {
				FUNC2(h, "Network read error: %s",
				    FUNC6(errno));
				return -1;
			}

			/* Wait until we can read more data. */
			FUNC3(&tv, NULL);
			FUNC7(deadline, &tv, &tv);
			if (tv.tv_sec >= 0) {
				fd_set rfds;

				FUNC1(&rfds);
				FUNC0(h->fd, &rfds);
				nfds =
				    FUNC5(h->fd + 1, &rfds, NULL, NULL, &tv);
				if (nfds == -1) {
					FUNC2(h, "select: %s",
					    FUNC6(errno));
					return -1;
				}
			} else
				nfds = 0;
			if (nfds == 0) {
				FUNC2(h, "Network read timed out");
				return -1;
			}
		} else if (n == 0) {
			FUNC2(h, "unexpected EOF from server");
			return -1;
		} else {
			ptr += n;
			len -= n;
		}
	}
	return 0;
}