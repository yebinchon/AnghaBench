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
struct rcfile {int /*<<< orphan*/ * rf_f; int /*<<< orphan*/  rf_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rcfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcfile*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 
 struct rcfile* FUNC4 (int) ; 
 int /*<<< orphan*/  pf_head ; 
 struct rcfile* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct rcfile*) ; 
 int /*<<< orphan*/  rf_next ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

int
FUNC8(const char *filename, const char *mode, struct rcfile **rcfile)
{
	struct rcfile *rcp;
	FILE *f;
	
	rcp = FUNC5(filename);
	if (rcp) {
		*rcfile = rcp;
		return 0;
	}
	f = FUNC3(filename, mode);
	if (f == NULL)
		return errno;
	rcp = FUNC4(sizeof(struct rcfile));
	if (rcp == NULL) {
		FUNC2(f);
		return ENOMEM;
	}
	FUNC1(rcp, sizeof(struct rcfile));
	rcp->rf_name = FUNC7(filename);
	rcp->rf_f = f;
	FUNC0(&pf_head, rcp, rf_next);
	FUNC6(rcp);
	*rcfile = rcp;
	return 0;
}