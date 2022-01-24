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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 char* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC13(const char* root_anchor_file)
{
	FILE* out;
	time_t now = FUNC12(NULL);
	out = FUNC7(root_anchor_file, "w");
	if(!out) {
		if(verb) FUNC10("%s: %s\n", root_anchor_file, FUNC11(errno));
		return;
	}
	if(FUNC8(out, "; autotrust trust anchor file\n"
		";;REVOKED\n"
		";;id: . 1\n"
		"; This file was written by unbound-anchor on %s"
		"; It indicates that the root does not use DNSSEC\n"
		"; to restart DNSSEC overwrite this file with a\n"
		"; valid trustanchor or (empty-it and run unbound-anchor)\n"
		, FUNC3(&now)) < 0) {
		if(verb) FUNC10("failed to write 'unsigned' to %s\n",
			root_anchor_file);
		if(verb && errno != 0) FUNC10("%s\n", FUNC11(errno));
	}
	FUNC5(out);
#ifdef HAVE_FSYNC
	fsync(fileno(out));
#else
	FUNC0((HANDLE)FUNC2(FUNC1(out)));
#endif
	FUNC4(out);
}