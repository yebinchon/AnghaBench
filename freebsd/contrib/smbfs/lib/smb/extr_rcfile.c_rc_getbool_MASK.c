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
struct rckey {char* rk_value; } ;
struct rcfile {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (char) ; 
 struct rcsection* FUNC2 (struct rcfile*,char const*) ; 
 struct rckey* FUNC3 (struct rcsection*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int
FUNC5(struct rcfile *rcp, const char *section, const char *key, int *value)
{
	struct rcsection *rsp;
	struct rckey *rkp;
	char *p;
	
	rsp = FUNC2(rcp, section);
	if (!rsp) return ENOENT;
	rkp = FUNC3(rsp,key);
	if (!rkp) return ENOENT;
	p = rkp->rk_value;
	while (*p && FUNC1(*p)) p++;
	if (*p == '0' || FUNC4(p,"no") == 0 || FUNC4(p,"false") == 0) {
		*value = 0;
		return 0;
	}
	if (*p == '1' || FUNC4(p,"yes") == 0 || FUNC4(p,"true") == 0) {
		*value = 1;
		return 0;
	}
	FUNC0(stderr, "invalid boolean value '%s' for key '%s' in section '%s' \n",p, key, section);
	return EINVAL;
}