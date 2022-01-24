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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  G_ELI_MAGIC ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (char const*,unsigned char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,...) ; 
 unsigned char* FUNC7 (scalar_t__) ; 
 int FUNC8 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int,unsigned char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(struct gctl_req *req, const char *prov, const char *file)
{
	unsigned char *sector;
	ssize_t secsize;
	int error, filefd, ret;

	ret = -1;
	filefd = -1;
	sector = NULL;
	secsize = 0;

	secsize = FUNC4(prov);
	if (secsize == 0) {
		FUNC6(req, "Cannot get informations about %s: %s.", prov,
		    FUNC9(errno));
		goto out;
	}
	sector = FUNC7(secsize);
	if (sector == NULL) {
		FUNC6(req, "Cannot allocate memory.");
		goto out;
	}
	/* Read metadata from the provider. */
	error = FUNC5(prov, sector, secsize, G_ELI_MAGIC);
	if (error != 0) {
		FUNC6(req, "Unable to read metadata from %s: %s.", prov,
		    FUNC9(error));
		goto out;
	}

	filefd = FUNC8(file, O_WRONLY | O_TRUNC | O_CREAT, 0600);
	if (filefd == -1) {
		FUNC6(req, "Unable to open %s: %s.", file,
		    FUNC9(errno));
		goto out;
	}
	/* Write metadata to the destination file. */
	if (FUNC11(filefd, sector, secsize) != secsize) {
		FUNC6(req, "Unable to write to %s: %s.", file,
		    FUNC9(errno));
		(void)FUNC0(filefd);
		(void)FUNC10(file);
		goto out;
	}
	(void)FUNC3(filefd);
	(void)FUNC0(filefd);
	/* Success. */
	ret = 0;
out:
	if (sector != NULL) {
		FUNC1(sector, secsize);
		FUNC2(sector);
	}
	return (ret);
}