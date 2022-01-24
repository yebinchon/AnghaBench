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
struct g_eli_metadata {int /*<<< orphan*/  md_version; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  md ;
typedef  int /*<<< orphan*/  kernver ;

/* Variables and functions */
 int /*<<< orphan*/  G_ELI_MAGIC ; 
 int G_ELI_VERSION ; 
 int FUNC0 (char const*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char*) ; 
 char* FUNC2 (struct gctl_req*,char*,int) ; 
 int FUNC3 (struct gctl_req*,char*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char*,unsigned int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void
FUNC9(struct gctl_req *req)
{
	struct g_eli_metadata md;
	const char *name;
	unsigned int eli_version;
	int error, i, nargs;

	nargs = FUNC3(req, "nargs");

	if (nargs == 0) {
		unsigned int kernver;
		ssize_t size;

		size = sizeof(kernver);
		if (FUNC7("kern.geom.eli.version", &kernver, &size,
		    NULL, 0) == -1) {
			FUNC8("Unable to obtain GELI kernel version");
		} else {
			FUNC5("kernel: %u\n", kernver);
		}
		FUNC5("userland: %u\n", G_ELI_VERSION);
		return;
	}

	for (i = 0; i < nargs; i++) {
		name = FUNC2(req, "arg%d", i);
		error = FUNC0(name, (unsigned char *)&md,
		    sizeof(md), G_ELI_MAGIC);
		if (error != 0) {
			FUNC8("%s: Unable to read metadata: %s.", name,
			    FUNC6(error));
			FUNC1(req, "Not fully done.");
			continue;
		}
		eli_version = FUNC4(&md.md_version);
		FUNC5("%s: %u\n", name, eli_version);
	}
}