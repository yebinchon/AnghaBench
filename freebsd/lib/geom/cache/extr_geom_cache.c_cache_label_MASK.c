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
struct g_cache_metadata {scalar_t__ md_provsize; void* md_size; void* md_bsize; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_version; int /*<<< orphan*/  md_magic; } ;
typedef  int /*<<< orphan*/  sector ;
typedef  void* intmax_t ;

/* Variables and functions */
 char const* G_CACHE_MAGIC ; 
 int /*<<< orphan*/  G_CACHE_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct g_cache_metadata*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*) ; 
 char* FUNC6 (struct gctl_req*,char*) ; 
 int FUNC7 (struct gctl_req*,char*) ; 
 void* FUNC8 (struct gctl_req*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC12(struct gctl_req *req)
{
	struct g_cache_metadata md;
	u_char sector[512];
	const char *name;
	int error, nargs;
	intmax_t val;

	FUNC0(sector, sizeof(sector));
	nargs = FUNC7(req, "nargs");
	if (nargs != 2) {
		FUNC5(req, "Invalid number of arguments.");
		return;
	}

	FUNC11(md.md_magic, G_CACHE_MAGIC, sizeof(md.md_magic));
	md.md_version = G_CACHE_VERSION;
	name = FUNC6(req, "arg0");
	FUNC11(md.md_name, name, sizeof(md.md_name));
	val = FUNC8(req, "blocksize");
	md.md_bsize = val;
	val = FUNC8(req, "size");
	md.md_size = val;

	name = FUNC6(req, "arg1");
	md.md_provsize = FUNC3(name);
	if (md.md_provsize == 0) {
		FUNC2(stderr, "Can't get mediasize of %s: %s.\n",
		    name, FUNC10(errno));
		FUNC5(req, "Not fully done.");
		return;
	}
	FUNC1(&md, sector);
	error = FUNC4(name, sector, sizeof(sector));
	if (error != 0) {
		FUNC2(stderr, "Can't store metadata on %s: %s.\n",
		    name, FUNC10(error));
		FUNC5(req, "Not fully done.");
		return;
	}
	if (verbose)
		FUNC9("Metadata value stored on %s.\n", name);
}