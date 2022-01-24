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
struct rsocket {int opts; int keepalive_time; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int RS_OPT_SVC_ACTIVE ; 
 int /*<<< orphan*/  RS_SVC_ADD_KEEPALIVE ; 
 int /*<<< orphan*/  RS_SVC_REM_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct rsocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_svc ; 

__attribute__((used)) static int FUNC4(struct rsocket *rs, int on)
{
	FILE *f;
	int ret;

	if ((on && (rs->opts & RS_OPT_SVC_ACTIVE)) ||
	    (!on && !(rs->opts & RS_OPT_SVC_ACTIVE)))
		return 0;

	if (on) {
		if (!rs->keepalive_time) {
			if ((f = FUNC1("/proc/sys/net/ipv4/tcp_keepalive_time", "r"))) {
				if (FUNC2(f, "%u", &rs->keepalive_time) != 1)
					rs->keepalive_time = 7200;
				FUNC0(f);
			} else {
				rs->keepalive_time = 7200;
			}
		}
		ret = FUNC3(&tcp_svc, rs, RS_SVC_ADD_KEEPALIVE);
	} else {
		ret = FUNC3(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);
	}

	return ret;
}