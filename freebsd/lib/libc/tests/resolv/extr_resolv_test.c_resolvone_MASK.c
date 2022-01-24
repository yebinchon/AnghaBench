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
#define  METHOD_GETADDRINFO 130 
#define  METHOD_GETHOSTBY 129 
#define  METHOD_GETIPNODEBY 128 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/ * ask ; 
 int* got ; 
 TYPE_1__* hosts ; 
 int method ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*,int,char*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  stats ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(int n)
{
	char buf[1024];
	pthread_t self = FUNC2();
	size_t i = (FUNC3() & 0x0fffffff) % hosts->sl_cur;
	char *host = hosts->sl_str[i];
	struct addrinfo hints, *res;
	int error, len;

	len = FUNC7(buf, sizeof(buf), "%p: %d resolving %s %d\n",
	    self, n, host, (int)i);
	(void)FUNC8(STDOUT_FILENO, buf, len);
	switch (method) {
	case METHOD_GETADDRINFO:
		error = FUNC4(self, host, i);
		break;
	case METHOD_GETHOSTBY:
		error = FUNC5(self, host);
		break;
	case METHOD_GETIPNODEBY:
		error = FUNC6(self, host);
		break;
	default:
		break;
	}
	FUNC0(&stats);
	ask[i]++;
	got[i] += error == 0;
	FUNC1(&stats);
}