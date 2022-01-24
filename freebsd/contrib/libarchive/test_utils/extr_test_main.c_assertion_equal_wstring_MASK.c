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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/  const*) ; 

int
FUNC5(const char *file, int line,
    const wchar_t *v1, const char *e1,
    const wchar_t *v2, const char *e2,
    void *extra)
{
	FUNC0(file, line);
	if (v1 == v2)
		return (1);
	if (v1 != NULL && v2 != NULL && FUNC3(v1, v2) == 0)
		return (1);
	FUNC2(file, line, "%s != %s", e1, e2);
	FUNC4(e1, v1);
	FUNC4(e2, v2);
	FUNC1(extra);
	return (0);
}