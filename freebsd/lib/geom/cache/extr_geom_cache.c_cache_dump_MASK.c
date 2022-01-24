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
struct g_cache_metadata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_CACHE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct g_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*) ; 
 char* FUNC5 (struct gctl_req*,char*,int) ; 
 int FUNC6 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req)
{
	struct g_cache_metadata md, tmpmd;
	const char *name;
	int error, i, nargs;

	nargs = FUNC6(req, "nargs");
	if (nargs < 1) {
		FUNC4(req, "Too few arguments.");
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC5(req, "arg%d", i);
		error = FUNC3(name, (u_char *)&tmpmd, sizeof(tmpmd),
		    G_CACHE_MAGIC);
		if (error != 0) {
			FUNC2(stderr, "Can't read metadata from %s: %s.\n",
			    name, FUNC8(error));
			FUNC4(req, "Not fully done.");
			continue;
		}
		FUNC0((u_char *)&tmpmd, &md);
		FUNC7("Metadata on %s:\n", name);
		FUNC1(&md);
		FUNC7("\n");
	}
}