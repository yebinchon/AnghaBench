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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 char* FUNC12 (scalar_t__) ; 
 scalar_t__ verb ; 

__attribute__((used)) static void
FUNC13(const char* root_anchor_file, BIO* ds)
{
	char* pp = NULL;
	int len;
	FILE* out;
	(void)FUNC1(ds, 0);
	len = FUNC0(ds, &pp);
	if(!len || !pp) {
		if(verb) FUNC11("out of memory\n");
		return;
	}
	out = FUNC8(root_anchor_file, "w");
	if(!out) {
		if(verb) FUNC11("%s: %s\n", root_anchor_file, FUNC12(errno));
		return;
	}
	if(FUNC10(pp, (size_t)len, 1, out) != 1) {
		if(verb) FUNC11("failed to write all data to %s\n",
			root_anchor_file);
		if(verb && errno != 0) FUNC11("%s\n", FUNC12(errno));
	}
	FUNC6(out);
#ifdef HAVE_FSYNC
	fsync(fileno(out));
#else
	FUNC2((HANDLE)FUNC4(FUNC3(out)));
#endif
	FUNC5(out);
}