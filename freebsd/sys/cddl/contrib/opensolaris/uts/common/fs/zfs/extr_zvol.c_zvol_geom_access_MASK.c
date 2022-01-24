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
struct g_provider {int error; int /*<<< orphan*/ * private; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct g_provider*,int,int) ; 
 int FUNC5 (struct g_provider*,int,int) ; 

__attribute__((used)) static int
FUNC6(struct g_provider *pp, int acr, int acw, int ace)
{
	int count, error, flags;

	FUNC1();

	/*
	 * To make it easier we expect either open or close, but not both
	 * at the same time.
	 */
	FUNC0((acr >= 0 && acw >= 0 && ace >= 0) ||
	    (acr <= 0 && acw <= 0 && ace <= 0),
	    ("Unsupported access request to %s (acr=%d, acw=%d, ace=%d).",
	    pp->name, acr, acw, ace));

	if (pp->private == NULL) {
		if (acr <= 0 && acw <= 0 && ace <= 0)
			return (0);
		return (pp->error);
	}

	/*
	 * We don't pass FEXCL flag to zvol_open()/zvol_close() if ace != 0,
	 * because GEOM already handles that and handles it a bit differently.
	 * GEOM allows for multiple read/exclusive consumers and ZFS allows
	 * only one exclusive consumer, no matter if it is reader or writer.
	 * I like better the way GEOM works so I'll leave it for GEOM to
	 * decide what to do.
	 */

	count = acr + acw + ace;
	if (count == 0)
		return (0);

	flags = 0;
	if (acr != 0 || ace != 0)
		flags |= FREAD;
	if (acw != 0)
		flags |= FWRITE;

	FUNC3();
	if (count > 0)
		error = FUNC5(pp, flags, count);
	else
		error = FUNC4(pp, flags, -count);
	FUNC2();
	return (error);
}