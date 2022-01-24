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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sadb_msg {int dummy; } ;
typedef  int /*<<< orphan*/  rbuf ;

/* Variables and functions */
 int /*<<< orphan*/  PF_KEY ; 
 int /*<<< orphan*/  PF_KEY_V2 ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ m_buf ; 
 int /*<<< orphan*/  m_len ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sadb_msg*) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7()
{
	u_char rbuf[1024 * 32];	/* XXX: Enough ? Should I do MSG_PEEK ? */
	int so, len;

	if ((so = FUNC6(PF_KEY, SOCK_RAW, PF_KEY_V2)) < 0) {
		FUNC1("socket(PF_KEY)");
		goto end;
	}
#if 0
    {
#include <sys/time.h>
	struct timeval tv;
	tv.tv_sec = 1;
	tv.tv_usec = 0;
	if (setsockopt(so, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)) < 0) {
		perror("setsockopt");
		goto end;
	}
    }
#endif

	FUNC2((struct sadb_msg *)m_buf);

	if ((len = FUNC4(so, m_buf, m_len, 0)) < 0) {
		FUNC1("send");
		goto end;
	}

	if ((len = FUNC3(so, rbuf, sizeof(rbuf), 0)) < 0) {
		FUNC1("recv");
		goto end;
	}

	FUNC2((struct sadb_msg *)rbuf);

end:
	(void)FUNC0(so);
	return(0);
}