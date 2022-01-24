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
struct Strbuf {int len; char const* s; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  char const Char ;
typedef  scalar_t__ COMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOTDIR ; 
 int NeedsRedraw ; 
 scalar_t__ SPELL ; 
 char const* STRdot ; 
 scalar_t__ SYM_EXPAND ; 
 scalar_t__ SYM_IGNORE ; 
 scalar_t__ SearchNoDirErr ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/  (*) (char const*)) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char const*,int) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ symlinks ; 
 scalar_t__ FUNC10 (struct Strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(const Char *dir, struct Strbuf *edir, DIR **dfd, COMMAND cmd)
{
    Char   *nd = NULL;
    Char *tdir;

    tdir = FUNC7(dir);
    FUNC4(tdir, xfree);
    if (tdir == NULL ||
	(FUNC10(edir, tdir) != 0) ||
	!(nd = FUNC6(edir->len ? edir->s : STRdot,
			  symlinks == SYM_IGNORE || symlinks == SYM_EXPAND)) ||
	((*dfd = FUNC8(FUNC9(nd))) == NULL)) {
	FUNC11(nd);
	if (cmd == SPELL || SearchNoDirErr) {
	    FUNC5(tdir);
	    return (-2);
	}
	/*
	 * From: Amos Shapira <amoss@cs.huji.ac.il>
	 * Print a better message when completion fails
	 */
	FUNC12("\n%S %s\n", edir->len ? edir->s : (tdir ? tdir : dir),
		(errno == ENOTDIR ? FUNC0(30, 10, "not a directory") :
		(errno == ENOENT ? FUNC0(30, 11, "not found") :
		 FUNC0(30, 12, "unreadable"))));
	NeedsRedraw = 1;
	FUNC5(tdir);
	return (-1);
    }
    FUNC5(tdir);
    if (nd) {
	if (*dir != '\0') {
	    int slash;

	    /*
	     * Copy and append a / if there was one
	     */
	    slash = edir->len != 0 && edir->s[edir->len - 1] == '/';
	    edir->len = 0;
	    FUNC1(edir, nd);
	    if (slash != 0 && edir->s[edir->len - 1] != '/')
		FUNC2(edir, '/');
	    FUNC3(edir);
	}
	FUNC11(nd);
    }
    return 0;
}