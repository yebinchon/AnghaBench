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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,scalar_t__) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(int from, int to)
{
	size_t i;
	ssize_t cnt;
	static const char msg[] = "hello world\n";
	char buf[sizeof(msg)+10];

	FUNC0(buf, 0, sizeof(buf));
	FUNC3(from, msg, FUNC5(msg));
	cnt = FUNC2(to, buf, sizeof(buf));
	if (cnt < (ssize_t)FUNC5(msg)) {
		FUNC1("short message read: %zd chars: \"%s\"\n", cnt, buf);
		return 1;
	}
	for (i = 0; i < sizeof(buf); i++) {
		if (buf[i] == '\r' || buf[i] == '\n') {
			buf[i] = '\n';
			buf[i+1] = '\0';
			break;
		}
	}

	return FUNC4(buf, msg) != 0;
}