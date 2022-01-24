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
struct pidfh {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct pidfh*) ; 
 struct pidfh* FUNC1 (char const*,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct pidfh*) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static const char *
FUNC5(void)
{
	const char *fn = "test_pidfile_uncontested";
	struct pidfh *pf;
	pid_t other = 0;

	FUNC4(fn);
	pf = FUNC1(fn, 0600, &other);
	if (pf == NULL && other != 0)
		return ("pidfile exists and is locked");
	if (pf == NULL)
		return (FUNC3(errno));
	if (FUNC2(pf) != 0) {
		FUNC0(pf);
		FUNC4(fn);
		return ("failed to write PID");
	}
	FUNC0(pf);
	FUNC4(fn);
	return (NULL);
}