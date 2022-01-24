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
typedef  int /*<<< orphan*/  tmpmd ;
struct gctl_req {int dummy; } ;
struct g_raid3_metadata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_RAID3_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int) ; 
 int FUNC4 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct g_raid3_metadata*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid3_metadata*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req)
{
	struct g_raid3_metadata md, tmpmd;
	const char *name;
	int error, i, nargs;

	nargs = FUNC4(req, "nargs");
	if (nargs < 1) {
		FUNC2(req, "Too few arguments.");
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC3(req, "arg%d", i);
		error = FUNC1(name, (u_char *)&tmpmd, sizeof(tmpmd),
		    G_RAID3_MAGIC);
		if (error != 0) {
			FUNC0(stderr, "Can't read metadata from %s: %s.\n",
			    name, FUNC8(error));
			FUNC2(req, "Not fully done.");
			continue;
		}
		if (FUNC6((u_char *)&tmpmd, &md) != 0) {
			FUNC0(stderr, "MD5 hash mismatch for %s, skipping.\n",
			    name);
			FUNC2(req, "Not fully done.");
			continue;
		}
		FUNC5("Metadata on %s:\n", name);
		FUNC7(&md);
		FUNC5("\n");
	}
}