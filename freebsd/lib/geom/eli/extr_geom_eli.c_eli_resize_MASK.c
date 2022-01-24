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
typedef  int uint64_t ;
struct gctl_req {int dummy; } ;
struct g_eli_metadata {int md_provsize; scalar_t__ md_version; } ;
typedef  int ssize_t ;
typedef  int off_t ;

/* Variables and functions */
#define  EINVAL 129 
#define  EOPNOTSUPP 128 
 int /*<<< orphan*/  G_ELI_VERSION ; 
 int FUNC0 (unsigned char*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct gctl_req*,char const*,struct g_eli_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char const*,int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct gctl_req*,char*,...) ; 
 char* FUNC10 (struct gctl_req*,char*) ; 
 int FUNC11 (struct gctl_req*,char*) ; 
 int FUNC12 (struct gctl_req*,char*) ; 
 unsigned char* FUNC13 (int) ; 
 int FUNC14 (int,unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static void
FUNC16(struct gctl_req *req)
{
	struct g_eli_metadata md;
	const char *prov;
	unsigned char *sector;
	ssize_t secsize;
	off_t mediasize, oldsize;
	int error, nargs, provfd;

	nargs = FUNC11(req, "nargs");
	if (nargs != 1) {
		FUNC9(req, "Invalid number of arguments.");
		return;
	}
	prov = FUNC10(req, "arg0");

	provfd = -1;
	sector = NULL;
	secsize = 0;

	provfd = FUNC7(prov, 1);
	if (provfd == -1) {
		FUNC9(req, "Cannot open %s: %s.", prov, FUNC15(errno));
		goto out;
	}

	mediasize = FUNC6(provfd);
	secsize = FUNC8(provfd);
	if (mediasize == -1 || secsize == -1) {
		FUNC9(req, "Cannot get information about %s: %s.", prov,
		    FUNC15(errno));
		goto out;
	}

	sector = FUNC13(secsize);
	if (sector == NULL) {
		FUNC9(req, "Cannot allocate memory.");
		goto out;
	}

	oldsize = FUNC12(req, "oldsize");
	if (oldsize < 0 || oldsize > mediasize) {
		FUNC9(req, "Invalid oldsize: Out of range.");
		goto out;
	}
	if (oldsize == mediasize) {
		FUNC9(req, "Size hasn't changed.");
		goto out;
	}

	/* Read metadata from the 'oldsize' offset. */
	if (FUNC14(provfd, sector, secsize, oldsize - secsize) != secsize) {
		FUNC9(req, "Cannot read old metadata: %s.",
		    FUNC15(errno));
		goto out;
	}

	/* Check if this sector contains geli metadata. */
	error = FUNC0(sector, &md);
	switch (error) {
	case 0:
		break;
	case EOPNOTSUPP:
		FUNC9(req,
		    "Provider's %s metadata version %u is too new.\n"
		    "geli: The highest supported version is %u.",
		    prov, (unsigned int)md.md_version, G_ELI_VERSION);
		goto out;
	case EINVAL:
		FUNC9(req, "Inconsistent provider's %s metadata.", prov);
		goto out;
	default:
		FUNC9(req,
		    "Unexpected error while decoding provider's %s metadata: %s.",
		    prov, FUNC15(error));
		goto out;
	}

	/*
	 * If the old metadata doesn't have a correct provider size, refuse
	 * to resize.
	 */
	if (md.md_provsize != (uint64_t)oldsize) {
		FUNC9(req, "Provider size mismatch at oldsize.");
		goto out;
	}

	/*
	 * Update the old metadata with the current provider size and write
	 * it back to the correct place on the provider.
	 */
	md.md_provsize = mediasize;
	/* Write metadata to the provider. */
	(void)FUNC1(req, prov, &md);
	/* Now trash the old metadata. */
	(void)FUNC2(req, prov, provfd, oldsize - secsize);
out:
	if (provfd != -1)
		(void)FUNC5(provfd);
	if (sector != NULL) {
		FUNC3(sector, secsize);
		FUNC4(sector);
	}
}