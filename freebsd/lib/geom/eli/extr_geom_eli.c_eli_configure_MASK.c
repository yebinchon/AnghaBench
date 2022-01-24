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
struct gctl_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char const*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*) ; 

__attribute__((used)) static void
FUNC6(struct gctl_req *req)
{
	const char *prov;
	bool boot, noboot, geliboot, nogeliboot, displaypass, nodisplaypass;
	bool autoresize, noautoresize, trim, notrim;
	int doboot, dogeliboot, dodisplaypass, dotrim, doautoresize;
	int i, nargs;

	nargs = FUNC4(req, "nargs");
	if (nargs == 0) {
		FUNC2(req, "Too few arguments.");
		return;
	}

	boot = FUNC4(req, "boot");
	noboot = FUNC4(req, "noboot");
	geliboot = FUNC4(req, "geliboot");
	nogeliboot = FUNC4(req, "nogeliboot");
	displaypass = FUNC4(req, "displaypass");
	nodisplaypass = FUNC4(req, "nodisplaypass");
	trim = FUNC4(req, "trim");
	notrim = FUNC4(req, "notrim");
	autoresize = FUNC4(req, "autoresize");
	noautoresize = FUNC4(req, "noautoresize");

	doboot = -1;
	if (boot && noboot) {
		FUNC2(req, "Options -b and -B are mutually exclusive.");
		return;
	}
	if (boot)
		doboot = 1;
	else if (noboot)
		doboot = 0;

	dogeliboot = -1;
	if (geliboot && nogeliboot) {
		FUNC2(req, "Options -g and -G are mutually exclusive.");
		return;
	}
	if (geliboot)
		dogeliboot = 1;
	else if (nogeliboot)
		dogeliboot = 0;

	dodisplaypass = -1;
	if (displaypass && nodisplaypass) {
		FUNC2(req, "Options -d and -D are mutually exclusive.");
		return;
	}
	if (displaypass)
		dodisplaypass = 1;
	else if (nodisplaypass)
		dodisplaypass = 0;

	dotrim = -1;
	if (trim && notrim) {
		FUNC2(req, "Options -t and -T are mutually exclusive.");
		return;
	}
	if (trim)
		dotrim = 1;
	else if (notrim)
		dotrim = 0;

	doautoresize = -1;
	if (autoresize && noautoresize) {
		FUNC2(req, "Options -r and -R are mutually exclusive.");
		return;
	}
	if (autoresize)
		doautoresize = 1;
	else if (noautoresize)
		doautoresize = 0;

	if (doboot == -1 && dogeliboot == -1 && dodisplaypass == -1 &&
	    dotrim == -1 && doautoresize == -1) {
		FUNC2(req, "No option given.");
		return;
	}

	/* First attached providers. */
	FUNC5(req);
	/* Now the rest. */
	for (i = 0; i < nargs; i++) {
		prov = FUNC3(req, "arg%d", i);
		if (!FUNC1(prov)) {
			FUNC0(req, prov, doboot, dogeliboot,
			    dodisplaypass, dotrim, doautoresize);
		}
	}
}