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
struct _csmapper {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct _csmapper*) ; 
 int FUNC1 (struct _csmapper*) ; 
 int FUNC2 (struct _csmapper*) ; 
 scalar_t__ FUNC3 (struct _csmapper*) ; 
 int FUNC4 (struct _csmapper**,char const*,char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int
FUNC5(struct _csmapper **rcm, const char *src, const char *dst,
    unsigned long *rnorm)
{
	struct _csmapper *cm;
	int ret;

	ret = FUNC4(&cm, src, dst, 0, rnorm);
	if (ret)
		return (ret);
	if (FUNC2(cm) != 1 || FUNC1(cm) != 1 ||
	    FUNC3(cm) != 0) {
		FUNC0(cm);
		return (EINVAL);
	}

	*rcm = cm;

	return (0);
}