#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* fts_path; int fts_info; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
#define  FTS_D 130 
#define  FTS_DP 129 
#define  FTS_F 128 
 int FTS_NOCHDIR ; 
 int FTS_PHYSICAL ; 
 int /*<<< orphan*/  FTS_SKIP ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRWXU ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char* const*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char const*,int) ; 
 int FUNC5 (int,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 

int
FUNC8(int srv_fd, int dstdir_fd)
{
	FTS		*ftsp;
	FTSENT		*entry;
	const char	*argv[2];
	const char	*path;

	argv[0] = ".";
	argv[1] = (char *)NULL;

	if ((ftsp = FUNC1((char * const *)argv,
	    FTS_PHYSICAL | FTS_NOCHDIR, NULL)) == NULL) {
		FUNC6("fts_open");
		return -1;
	}

	while ((entry = FUNC2(ftsp)) != NULL) {
		path = entry->fts_path + 2;
		switch (entry->fts_info) {
		case FTS_F:
			if (FUNC5(srv_fd, dstdir_fd, path) == -1) {
				FUNC0(ftsp);
				return -1;
			}
			break;
		case FTS_D:
			if (*path != '\0' &&
			    FUNC4(dstdir_fd, path, S_IRWXU | S_IRGRP |
			      S_IXGRP | S_IROTH | S_IXOTH) == -1 &&
			    errno != EEXIST) {
				FUNC6("mkdirat(%s)", path);
				(void)FUNC3(ftsp, entry, FTS_SKIP);
			}
			break;
		case FTS_DP:
			break;
		default:
			FUNC7("%s: not a regular file", path);
			break;
		}
	}

	FUNC0(ftsp);
	return 0;
}