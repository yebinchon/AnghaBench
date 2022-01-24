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
struct elfhints_hdr {int version; int strtab; scalar_t__ strsize; scalar_t__ dirlistlen; int /*<<< orphan*/  spare; scalar_t__ dirlist; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ELFHINTS_MAGIC ; 
 scalar_t__ EOF ; 
 int FUNC0 (char**,char*,char const*) ; 
 char** dirs ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct elfhints_hdr*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*) ; 
 int ndirs ; 
 scalar_t__ FUNC12 (char,int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,char const*) ; 
 scalar_t__ FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(const char *hintsfile)
{
	struct elfhints_hdr	 hdr;
	char			*tempname;
	int			 fd;
	FILE			*fp;
	int			 i;

	if (FUNC0(&tempname, "%s.XXXXXX", hintsfile) == -1)
		FUNC2(1, "Out of memory");
	if ((fd = FUNC11(tempname)) ==  -1)
		FUNC1(1, "mkstemp(%s)", tempname);
	if (FUNC3(fd, 0444) == -1)
		FUNC1(1, "fchmod(%s)", tempname);
	if ((fp = FUNC5(fd, "wb")) == NULL)
		FUNC1(1, "fdopen(%s)", tempname);

	hdr.magic = ELFHINTS_MAGIC;
	hdr.version = 1;
	hdr.strtab = sizeof hdr;
	hdr.strsize = 0;
	hdr.dirlist = 0;
	FUNC10(hdr.spare, 0, sizeof hdr.spare);

	/* Count up the size of the string table. */
	if (ndirs > 0) {
		hdr.strsize += FUNC14(dirs[0]);
		for (i = 1;  i < ndirs;  i++)
			hdr.strsize += 1 + FUNC14(dirs[i]);
	}
	hdr.dirlistlen = hdr.strsize;
	hdr.strsize++;	/* For the null terminator */

	/* Write the header. */
	if (FUNC9(&hdr, 1, sizeof hdr, fp) != sizeof hdr)
		FUNC1(1, "%s: write error", tempname);
	/* Write the strings. */
	if (ndirs > 0) {
		if (FUNC7(dirs[0], fp) == EOF)
			FUNC1(1, "%s: write error", tempname);
		for (i = 1;  i < ndirs;  i++)
			if (FUNC6(fp, ":%s", dirs[i]) < 0)
				FUNC1(1, "%s: write error", tempname);
	}
	if (FUNC12('\0', fp) == EOF || FUNC4(fp) == EOF)
		FUNC1(1, "%s: write error", tempname);

	if (FUNC13(tempname, hintsfile) == -1)
		FUNC1(1, "rename %s to %s", tempname, hintsfile);
	FUNC8(tempname);
}