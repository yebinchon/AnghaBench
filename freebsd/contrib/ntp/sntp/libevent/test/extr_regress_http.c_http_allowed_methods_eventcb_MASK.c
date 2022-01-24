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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, short what, void *arg)
{
	char **output = arg;
	if ((what & (BEV_EVENT_ERROR|BEV_EVENT_EOF))) {
		char buf[4096];
		int n;
		n = FUNC1(FUNC0(bev), buf,
		    sizeof(buf)-1);
		if (n >= 0) {
			buf[n]='\0';
			if (*output)
				FUNC3(*output);
			*output = FUNC4(buf);
		}
		FUNC2(exit_base, NULL);
	}
}