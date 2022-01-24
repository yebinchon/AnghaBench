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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (void*,unsigned char*,int) ; 
 int FUNC1 (int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int sock, void *eloop_ctx, void *sock_ctx)
{
	int len;
	unsigned char buf[3000];

	len = FUNC1(sock, buf, sizeof(buf), 0);
	if (len < 0) {
		FUNC3(MSG_ERROR, "macsec_qca: recv: %s", FUNC2(errno));
		return;
	}

	FUNC0(eloop_ctx, buf, len);
}