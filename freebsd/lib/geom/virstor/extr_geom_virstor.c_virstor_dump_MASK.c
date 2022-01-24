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
struct g_virstor_metadata {int dummy; } ;
typedef  int /*<<< orphan*/  param ;
typedef  int /*<<< orphan*/  md ;

/* Variables and functions */
 int /*<<< orphan*/  G_VIRSTOR_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*) ; 
 char* FUNC4 (struct gctl_req*,char*,char*) ; 
 int FUNC5 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct g_virstor_metadata*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_virstor_metadata*) ; 

__attribute__((used)) static void
FUNC11(struct gctl_req *req)
{
	struct g_virstor_metadata md;
	u_char tmpmd[512];	/* temporary buffer */
	const char *name;
	char param[16];
	int nargs, error, i;

	FUNC0(sizeof(tmpmd) >= sizeof(md));

	nargs = FUNC5(req, "nargs");
	if (nargs < 1) {
		FUNC3(req, "Too few arguments.");
		return;
	}
	for (i = 0; i < nargs; i++) {
		FUNC7(param, sizeof(param), "arg%u", i);
		name = FUNC4(req, "%s", param);

		error = FUNC2(name, (u_char *) & tmpmd, sizeof(tmpmd),
		    G_VIRSTOR_MAGIC);
		if (error != 0) {
			FUNC1(stderr, "Can't read metadata from %s: %s.\n",
			    name, FUNC8(error));
			FUNC3(req,
			    "Not fully done (error reading metadata).");
			continue;
		}
		FUNC9((u_char *) & tmpmd, &md);
		FUNC6("Metadata on %s:\n", name);
		FUNC10(&md);
		FUNC6("\n");
	}
}