#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* fts_path; int /*<<< orphan*/  fts_dev; } ;
struct TYPE_5__ {int fts_pathlen; int fts_namelen; char* fts_name; char* fts_accpath; char* fts_path; int /*<<< orphan*/  fts_dev; } ;
typedef  TYPE_1__ FTSENT ;
typedef  TYPE_2__ FTS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void
FUNC3(FTS *sp, FTSENT *p)
{
	int len;
	char *cp;

	/*
	 * Load the stream structure for the next traversal.  Since we don't
	 * actually enter the directory until after the preorder visit, set
	 * the fts_accpath field specially so the chdir gets done to the right
	 * place and the user can access the first node.  From fts_open it's
	 * known that the path will fit.
	 */
	len = p->fts_pathlen = p->fts_namelen;
	FUNC0(sp->fts_path, p->fts_name, len + 1);
	if ((cp = FUNC2(p->fts_name, '/')) && (cp != p->fts_name || cp[1])) {
		len = FUNC1(++cp);
		FUNC0(p->fts_name, cp, len + 1);
		p->fts_namelen = len;
	}
	p->fts_accpath = p->fts_path = sp->fts_path;
	sp->fts_dev = p->fts_dev;
}