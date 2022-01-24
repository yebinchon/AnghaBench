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
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int G_ELI_USERKEYLEN ; 
 int /*<<< orphan*/ * FUNC0 (struct gctl_req*,struct g_eli_metadata*,unsigned char*,int) ; 
 int FUNC1 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*) ; 
 char* FUNC5 (struct gctl_req*,char*) ; 
 int FUNC6 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC10(struct gctl_req *req)
{
	struct g_eli_metadata md;
	unsigned char key[G_ELI_USERKEYLEN];
	const char *prov;
	off_t mediasize;
	int nargs;

	nargs = FUNC6(req, "nargs");
	if (nargs != 1) {
		FUNC4(req, "Invalid number of arguments.");
		return;
	}
	prov = FUNC5(req, "arg0");

	if (FUNC1(req, prov, &md) == -1)
		return;

	mediasize = FUNC3(prov);
	if (md.md_provsize != (uint64_t)mediasize) {
		FUNC4(req, "Provider size mismatch.");
		return;
	}

	if (FUNC0(req, &md, key, false) == NULL) {
		FUNC2(key, sizeof(key));
		return;
	}

	FUNC8(req, "key", sizeof(key), key);
	if (FUNC7(req) == NULL) {
		if (verbose)
			FUNC9("Resumed %s.\n", prov);
	}
	FUNC2(key, sizeof(key));
}