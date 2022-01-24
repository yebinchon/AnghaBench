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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PJDLOG_MODE_STD ; 
 int /*<<< orphan*/  PJDLOG_MODE_SYSLOG ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,char*,char*,char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,char*,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[])
{

	FUNC0(argc > 3);
	FUNC0(FUNC3(argv[0], "tls") == 0);

	FUNC2(FUNC1(argv[3]) == 0 ? PJDLOG_MODE_SYSLOG : PJDLOG_MODE_STD);

	if (FUNC3(argv[2], "client") == 0) {
		if (argc != 10)
			return (EINVAL);
		FUNC4(argv[1], FUNC1(argv[3]),
		    argv[4][0] == '\0' ? NULL : argv[4], argv[5], argv[6],
		    argv[7], FUNC1(argv[8]), FUNC1(argv[9]));
	} else if (FUNC3(argv[2], "server") == 0) {
		if (argc != 7)
			return (EINVAL);
		FUNC5(argv[1], FUNC1(argv[3]), argv[4], argv[5],
		    FUNC1(argv[6]));
	}
	return (EINVAL);
}