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
struct pmcstat_string {int ps_len; int ps_hash; int /*<<< orphan*/  ps_string; } ;
typedef  struct pmcstat_string const* pmcstat_interned_string ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pmcstat_string*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct pmcstat_string* FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * pmcstat_string_hash ; 
 struct pmcstat_string* FUNC4 (char const*) ; 
 int /*<<< orphan*/  ps_next ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

pmcstat_interned_string
FUNC7(const char *s)
{
	struct pmcstat_string *ps;
	const struct pmcstat_string *cps;
	int hash, len;

	if ((cps = FUNC4(s)) != NULL)
		return (cps);

	hash = FUNC3(s);
	len  = FUNC6(s);

	if ((ps = FUNC2(sizeof(*ps))) == NULL)
		FUNC1(EX_OSERR, "ERROR: Could not intern string");
	ps->ps_len = len;
	ps->ps_hash = hash;
	ps->ps_string = FUNC5(s);
	FUNC0(&pmcstat_string_hash[hash], ps, ps_next);
	return ((pmcstat_interned_string) ps);
}