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
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; scalar_t__ ssl; } ;
typedef  TYPE_1__ RES ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SSL_ERROR_ZERO_RETURN ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 size_t FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(RES* res, const char* text)
{
	int r;
	if(!res) 
		return 0;
	if(res->ssl) {
		FUNC0();
		if((r=FUNC2(res->ssl, text, (int)FUNC8(text))) <= 0) {
			if(FUNC1(res->ssl, r) == SSL_ERROR_ZERO_RETURN) {
				FUNC9(VERB_QUERY, "warning, in SSL_write, peer "
					"closed connection");
				return 0;
			}
			FUNC4("could not SSL_write");
			return 0;
		}
	} else {
		size_t at = 0;
		while(at < FUNC8(text)) {
			ssize_t r = FUNC6(res->fd, text+at, FUNC8(text)-at, 0);
			if(r == -1) {
				if(errno == EAGAIN || errno == EINTR)
					continue;
#ifndef USE_WINSOCK
				FUNC5("could not send: %s", FUNC7(errno));
#else
				log_err("could not send: %s", wsa_strerror(WSAGetLastError()));
#endif
				return 0;
			}
			at += r;
		}
	}
	return 1;
}