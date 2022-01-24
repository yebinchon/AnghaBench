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
typedef  int /*<<< orphan*/  u_char ;
struct gctl_req {int dummy; } ;
struct g_label_metadata {scalar_t__ md_provsize; int /*<<< orphan*/ * md_label; int /*<<< orphan*/  md_version; int /*<<< orphan*/ * md_magic; } ;
typedef  int /*<<< orphan*/  sector ;

/* Variables and functions */
 char const* G_LABEL_MAGIC ; 
 int /*<<< orphan*/  G_LABEL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,...) ; 
 char* FUNC6 (struct gctl_req*,char*) ; 
 int FUNC7 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_label_metadata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC12(struct gctl_req *req)
{
	struct g_label_metadata md;
	const char *name, *label;
	u_char sector[512];
	int error, nargs;

	FUNC0(sector, sizeof(sector));
	nargs = FUNC7(req, "nargs");
	if (nargs != 2) {
		FUNC5(req, "Invalid number of arguments.");
		return;
	}

	/*
	 * Clear last sector first to spoil all components if device exists.
	 */
	name = FUNC6(req, "arg1");
	error = FUNC3(name, NULL);
	if (error != 0) {
		FUNC5(req, "Can't store metadata on %s: %s.", name,
		    FUNC10(error));
		return;
	}

	FUNC11(md.md_magic, G_LABEL_MAGIC, sizeof(md.md_magic));
	md.md_version = G_LABEL_VERSION;
	label = FUNC6(req, "arg0");
	FUNC0(md.md_label, sizeof(md.md_label));
	FUNC11(md.md_label, label, sizeof(md.md_label));
	md.md_provsize = FUNC2(name);
	if (md.md_provsize == 0) {
		FUNC5(req, "Can't get mediasize of %s: %s.", name,
		    FUNC10(errno));
		return;
	}

	/*
	 * Ok, store metadata.
	 */
	FUNC8(&md, sector);
	error = FUNC4(name, sector, sizeof(sector));
	if (error != 0) {
		FUNC1(stderr, "Can't store metadata on %s: %s.\n", name,
		    FUNC10(error));
		FUNC5(req, "Not done.");
	}
	if (verbose)
		FUNC9("Metadata value stored on %s.\n", name);
}