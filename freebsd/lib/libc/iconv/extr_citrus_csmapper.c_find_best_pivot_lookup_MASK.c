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
struct parse_arg {unsigned long norm; char* dst; } ;
struct _region {int dummy; } ;
struct _lookup {int dummy; } ;
typedef  int /*<<< orphan*/  pivot_min ;

/* Variables and functions */
 int /*<<< orphan*/  CS_PIVOT ; 
 int ENOENT ; 
 int PATH_MAX ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  _LOOKUP_CASE_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (struct _lookup*) ; 
 int FUNC1 (struct _lookup*,char const*,struct _region*) ; 
 int FUNC2 (struct _lookup*,int /*<<< orphan*/ *,struct _region*) ; 
 int FUNC3 (struct _lookup**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct parse_arg*,char const*) ; 
 int FUNC5 (struct parse_arg*,struct _region*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC7(const char *src, const char *dst, char *pivot,
    size_t pvlen, unsigned long *rnorm)
{
	struct _lookup *cl;
	struct _region data;
	struct parse_arg pa;
	char pivot_min[PATH_MAX];
	unsigned long norm_min;
	int ret;

	ret = FUNC3(&cl, CS_PIVOT, _LOOKUP_CASE_IGNORE);
	if (ret)
		return (ret);

	norm_min = ULONG_MAX;

	/* find pivot code */
	ret = FUNC1(cl, src, &data);
	while (ret == 0) {
		ret = FUNC5(&pa, &data);
		if (ret)
			break;
		ret = FUNC4(&pa, dst);
		if (ret)
			break;
		if (pa.norm < norm_min) {
			norm_min = pa.norm;
			FUNC6(pivot_min, pa.dst, sizeof(pivot_min));
		}
		ret = FUNC2(cl, NULL, &data);
	}
	FUNC0(cl);

	if (ret != ENOENT)
		return (ret);
	if (norm_min == ULONG_MAX)
		return (ENOENT);
	FUNC6(pivot, pivot_min, pvlen);
	if (rnorm)
		*rnorm = norm_min;

	return (0);
}