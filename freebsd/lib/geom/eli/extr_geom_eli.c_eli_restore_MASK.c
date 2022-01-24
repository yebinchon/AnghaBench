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
typedef  scalar_t__ uint64_t ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {scalar_t__ md_provsize; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int FUNC0 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,...) ; 
 char* FUNC4 (struct gctl_req*,char*) ; 
 int FUNC5 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct gctl_req *req)
{
	struct g_eli_metadata md;
	const char *file, *prov;
	off_t mediasize;
	int nargs;

	nargs = FUNC5(req, "nargs");
	if (nargs != 2) {
		FUNC3(req, "Invalid number of arguments.");
		return;
	}
	file = FUNC4(req, "arg0");
	prov = FUNC4(req, "arg1");

	/* Read metadata from the backup file. */
	if (FUNC0(req, file, &md) == -1)
		return;
	/* Obtain provider's mediasize. */
	mediasize = FUNC2(prov);
	if (mediasize == 0) {
		FUNC3(req, "Cannot get informations about %s: %s.", prov,
		    FUNC6(errno));
		return;
	}
	/* Check if the provider size has changed since we did the backup. */
	if (md.md_provsize != (uint64_t)mediasize) {
		if (FUNC5(req, "force")) {
			md.md_provsize = mediasize;
		} else {
			FUNC3(req, "Provider size mismatch: "
			    "wrong backup file?");
			return;
		}
	}
	/* Write metadata to the provider. */
	(void)FUNC1(req, prov, &md);
}