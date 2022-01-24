#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; scalar_t__ ssl; } ;
typedef  TYPE_1__ RES ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SSL_ERROR_ZERO_RETURN ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(RES* res, char* buf, size_t max)
{
	int r;
	size_t len = 0;
	if(!res)
		return 0;
	while(len < max) {
		if(res->ssl) {
			FUNC0();
			if((r=FUNC2(res->ssl, buf+len, 1)) <= 0) {
				if(FUNC1(res->ssl, r) == SSL_ERROR_ZERO_RETURN) {
					buf[len] = 0;
					return 1;
				}
				FUNC4("could not SSL_read");
				return 0;
			}
		} else {
			while(1) {
				ssize_t rr = FUNC6(res->fd, buf+len, 1, 0);
				if(rr <= 0) {
					if(rr == 0) {
						buf[len] = 0;
						return 1;
					}
					if(errno == EINTR || errno == EAGAIN)
						continue;
#ifndef USE_WINSOCK
					FUNC5("could not recv: %s", FUNC7(errno));
#else
					log_err("could not recv: %s", wsa_strerror(WSAGetLastError()));
#endif
					return 0;
				}
				break;
			}
		}
		if(buf[len] == '\n') {
			/* return string without \n */
			buf[len] = 0;
			return 1;
		}
		len++;
	}
	buf[max-1] = 0;
	FUNC5("control line too long (%d): %s", (int)max, buf);
	return 0;
}