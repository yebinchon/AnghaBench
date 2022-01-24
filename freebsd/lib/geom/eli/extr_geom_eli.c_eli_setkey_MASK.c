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
struct gctl_req {char* error; } ;
struct g_eli_metadata {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int FUNC6 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(struct gctl_req *req)
{
	struct g_eli_metadata md;
	const char *prov;
	int nargs;

	nargs = FUNC6(req, "nargs");
	if (nargs != 1) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}
	prov = FUNC5(req, "arg0");

	if (FUNC1(req, prov, &md) == -1)
		return;

	if (FUNC0(prov))
		FUNC2(req, &md);
	else
		FUNC3(req, prov, &md);

	if (req->error == NULL || req->error[0] == '\0') {
		FUNC7("Note, that the master key encrypted with old keys "
		    "and/or passphrase may still exists in a metadata backup "
		    "file.\n");
	}
}