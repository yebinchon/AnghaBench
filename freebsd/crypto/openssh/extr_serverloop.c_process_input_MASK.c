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
struct ssh {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC8(struct ssh *ssh, fd_set *readset, int connection_in)
{
	int len;
	char buf[16384];

	/* Read and buffer any input data from the client. */
	if (FUNC0(connection_in, readset)) {
		len = FUNC3(connection_in, buf, sizeof(buf));
		if (len == 0) {
			FUNC7("Connection closed by %.100s port %d",
			    FUNC4(ssh), FUNC5(ssh));
			return -1;
		} else if (len < 0) {
			if (errno != EINTR && errno != EAGAIN &&
			    errno != EWOULDBLOCK) {
				FUNC7("Read error from remote host "
				    "%.100s port %d: %.100s",
				    FUNC4(ssh),
				    FUNC5(ssh), FUNC6(errno));
				FUNC1(255);
			}
		} else {
			/* Buffer any received data. */
			FUNC2(buf, len);
		}
	}
	return 0;
}