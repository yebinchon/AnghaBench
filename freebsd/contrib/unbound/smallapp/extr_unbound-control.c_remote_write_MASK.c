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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(SSL* ssl, int fd, const char* buf, size_t len)
{
	if(ssl) {
		if(FUNC0(ssl, buf, (int)len) <= 0)
			FUNC4("could not SSL_write");
	} else {
		if(FUNC3(fd, buf, len, 0) < (ssize_t)len) {
#ifndef USE_WINSOCK
			FUNC2("could not send: %s", FUNC5(errno));
#else
			fatal_exit("could not send: %s", wsa_strerror(WSAGetLastError()));
#endif
		}
	}
}