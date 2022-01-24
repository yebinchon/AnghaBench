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
struct iovec {char* iov_base; int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char*) ; 

void
FUNC5(const char *s) {
	struct iovec iov[4], *v = iov;
	char *t;

	if (s != NULL && *s != '\0') {
		FUNC0(s, t);
		v->iov_base = t;
		v->iov_len = FUNC4(t);
		v++;
		FUNC0(": ", t);
		v->iov_base = t;
		v->iov_len = 2;
		v++;
	}
	FUNC0(FUNC3(*FUNC1()), t);
	v->iov_base = t;
	v->iov_len = FUNC4(v->iov_base);
	v++;
	FUNC0("\n", t);
	v->iov_base = t;
	v->iov_len = 1;
	FUNC2(STDERR_FILENO, iov, (v - iov) + 1);
}