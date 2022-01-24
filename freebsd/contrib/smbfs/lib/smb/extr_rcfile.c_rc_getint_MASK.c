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
struct rcsection {int dummy; } ;
struct rckey {int /*<<< orphan*/  rk_value; } ;
struct rcfile {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int errno ; 
 struct rcsection* FUNC0 (struct rcfile*,char const*) ; 
 struct rckey* FUNC1 (struct rcsection*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*,char const*) ; 

int
FUNC4(struct rcfile *rcp, const char *section, const char *key, int *value)
{
	struct rcsection *rsp;
	struct rckey *rkp;
	
	rsp = FUNC0(rcp, section);
	if (!rsp)
		return ENOENT;
	rkp = FUNC1(rsp, key);
	if (!rkp)
		return ENOENT;
	errno = 0;
	*value = FUNC2(rkp->rk_value, NULL, 0);
	if (errno) {
		FUNC3("invalid int value '%s' for key '%s' in section '%s'\n", rkp->rk_value, key, section);
		return errno;
	}
	return 0;
}