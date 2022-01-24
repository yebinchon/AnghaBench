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
struct kld_file_stat {int version; int id; int refs; char* address; char* pathname; int /*<<< orphan*/  name; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  POINTER_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,struct kld_file_stat*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(int fileid, int verbose, int humanized)
{
    struct kld_file_stat stat;
    int modid;
    char buf[5];

    stat.version = sizeof(struct kld_file_stat);
    if (FUNC3(fileid, &stat) < 0) {
	FUNC0(1, "can't stat file id %d", fileid);
    } else {
	if (humanized) {
		FUNC1(buf, sizeof(buf), stat.size,
		    "", HN_AUTOSCALE, HN_DECIMAL | HN_NOSPACE);

		FUNC5("%2d %4d %*p %5s %s",
		    stat.id, stat.refs, POINTER_WIDTH, stat.address, buf,
		    stat.name);
	} else {
		FUNC5("%2d %4d %*p %8zx %s",
		    stat.id, stat.refs, POINTER_WIDTH, stat.address, stat.size,
		    stat.name);
	}
    }

    if (verbose) {
	FUNC5(" (%s)\n", stat.pathname);
	FUNC5("\tContains modules:\n");
	FUNC5("\t\t Id Name\n");
	for (modid = FUNC2(fileid); modid > 0;
	     modid = FUNC4(modid))
	    FUNC6(modid);
    } else
	FUNC5("\n");
}