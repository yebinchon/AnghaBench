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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SSL_ERROR_ZERO_RETURN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(SSL* ssl, int fd, char* buf, size_t len)
{
	if(ssl) {
		int r;
		FUNC0();
		if((r = FUNC2(ssl, buf, (int)len-1)) <= 0) {
			if(FUNC1(ssl, r) == SSL_ERROR_ZERO_RETURN) {
				/* EOF */
				return 0;
			}
			FUNC6("could not SSL_read");
		}
		buf[r] = 0;
	} else {
		ssize_t rr = FUNC5(fd, buf, len-1, 0);
		if(rr <= 0) {
			if(rr == 0) {
				/* EOF */
				return 0;
			}
#ifndef USE_WINSOCK
			FUNC4("could not recv: %s", FUNC7(errno));
#else
			fatal_exit("could not recv: %s", wsa_strerror(WSAGetLastError()));
#endif
		}
		buf[rr] = 0;
	}
	return 1;
}