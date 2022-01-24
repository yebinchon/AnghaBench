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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  char uint8_t ;
typedef  scalar_t__ uint32_t ;
struct gctl_req {int dummy; } ;
struct g_multipath_metadata {int md_active_active; int /*<<< orphan*/  md_uuid; scalar_t__ md_sectorsize; scalar_t__ md_size; int /*<<< orphan*/  md_name; int /*<<< orphan*/  md_version; int /*<<< orphan*/  md_magic; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  char* intmax_t ;

/* Variables and functions */
 char* G_MULTIPATH_MAGIC ; 
 int /*<<< orphan*/  G_MULTIPATH_VERSION ; 
 char* FUNC0 (int,scalar_t__) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (char const*,char*,scalar_t__) ; 
 int FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gctl_req*,char*,...) ; 
 char* FUNC9 (struct gctl_req*,char*,...) ; 
 int FUNC10 (struct gctl_req*,char*) ; 
 char* FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct g_multipath_metadata*,char*) ; 
 scalar_t__ FUNC14 (int,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ uuid_s_ok ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char**,scalar_t__*) ; 

__attribute__((used)) static void
FUNC19(struct gctl_req *req)
{
	struct g_multipath_metadata md;
	off_t disksize = 0, msize;
	uint8_t *sector, *rsector;
	char *ptr;
	uuid_t uuid;
	ssize_t secsize = 0, ssize;
	uint32_t status;
	const char *name, *name2, *mpname;
	int error, i, nargs, fd;

	nargs = FUNC10(req, "nargs");
	if (nargs < 2) {
		FUNC8(req, "wrong number of arguments.");
		return;
	}

	/*
	 * First, check each provider to make sure it's the same size.
	 * This also gets us our size and sectorsize for the metadata.
	 */
	for (i = 1; i < nargs; i++) {
		name = FUNC9(req, "arg%d", i);
		msize = FUNC4(name);
		ssize = FUNC5(name);
		if (msize == 0 || ssize == 0) {
			FUNC8(req, "cannot get information about %s: %s.",
			    name, FUNC15(errno));
			return;
		}
		if (i == 1) {
			secsize = ssize;
			disksize = msize;
		} else {
			if (secsize != ssize) {
				FUNC8(req, "%s sector size %ju different.",
				    name, (intmax_t)ssize);
				return;
			}
			if (disksize != msize) {
				FUNC8(req, "%s media size %ju different.",
				    name, (intmax_t)msize);
				return;
			}
		}
		
	}

	/*
	 * Generate metadata.
	 */
	FUNC16(md.md_magic, G_MULTIPATH_MAGIC, sizeof(md.md_magic));
	md.md_version = G_MULTIPATH_VERSION;
	mpname = FUNC9(req, "arg0");
	FUNC16(md.md_name, mpname, sizeof(md.md_name));
	md.md_size = disksize;
	md.md_sectorsize = secsize;
	FUNC17(&uuid, &status);
	if (status != uuid_s_ok) {
		FUNC8(req, "cannot create a UUID.");
		return;
	}
	FUNC18(&uuid, &ptr, &status);
	if (status != uuid_s_ok) {
		FUNC8(req, "cannot stringify a UUID.");
		return;
	}
	FUNC16(md.md_uuid, ptr, sizeof (md.md_uuid));
	md.md_active_active = FUNC10(req, "active_active");
	if (FUNC10(req, "active_read"))
		md.md_active_active = 2;
	FUNC2(ptr);

	/*
	 * Allocate a sector to write as metadata.
	 */
	sector = FUNC0(1, secsize);
	if (sector == NULL) {
		FUNC8(req, "unable to allocate metadata buffer");
		return;
	}
	rsector = FUNC11(secsize);
	if (rsector == NULL) {
		FUNC8(req, "unable to allocate metadata buffer");
		goto done;
	}

	/*
	 * encode the metadata
	 */
	FUNC13(&md, sector);

	/*
	 * Store metadata on the initial provider.
	 */
	name = FUNC9(req, "arg1");
	error = FUNC6(name, sector, secsize);
	if (error != 0) {
		FUNC8(req, "cannot store metadata on %s: %s.", name, FUNC15(error));
		goto done;
	}

	/*
	 * Now touch the rest of the providers to hint retaste.
	 */
	for (i = 2; i < nargs; i++) {
		name2 = FUNC9(req, "arg%d", i);
		fd = FUNC7(name2, 1);
		if (fd < 0) {
			FUNC1(stderr, "Unable to open %s: %s.\n",
			    name2, FUNC15(errno));
			continue;
		}
		if (FUNC14(fd, rsector, secsize, disksize - secsize) !=
		    (ssize_t)secsize) {
			FUNC1(stderr, "Unable to read metadata from %s: %s.\n",
			    name2, FUNC15(errno));
			FUNC3(fd);
			continue;
		}
		FUNC3(fd);
		if (FUNC12(sector, rsector, secsize)) {
			FUNC1(stderr, "No metadata found on %s."
			    " It is not a path of %s.\n",
			    name2, name);
		}
	}
done:
	FUNC2(rsector);
	FUNC2(sector);
}