#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int sl_cur; char** sl_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/ * ask ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct addrinfo**) ; 
 int* got ; 
 TYPE_1__* hosts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stats ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(int n)
{
	char buf[1024];
	pthread_t self = FUNC4();
	size_t i = (FUNC5() & 0x0fffffff) % hosts->sl_cur;
	char *host = hosts->sl_str[i];
	struct addrinfo *res;
	int error, len;
	if (debug) {
		len = FUNC6(buf, sizeof(buf), "%p: %d resolving %s %d\n",
			self, n, host, (int)i);
		(void)FUNC7(STDOUT_FILENO, buf, len);
	}
	error = FUNC1(host, NULL, NULL, &res);
	if (debug) {
		len = FUNC6(buf, sizeof(buf), "%p: host %s %s\n",
			self, host, error ? "not found" : "ok");
		(void)FUNC7(STDOUT_FILENO, buf, len);
	}
	FUNC2(&stats);
	ask[i]++;
	got[i] += error == 0;
	FUNC3(&stats);
	if (error == 0)
		FUNC0(res);
}