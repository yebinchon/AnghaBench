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
struct TYPE_5__ {int /*<<< orphan*/  idx; } ;
typedef  TYPE_1__ xz_file_info ;
struct TYPE_6__ {char* src_name; } ;
typedef  TYPE_2__ file_pair ;

/* Variables and functions */
 int CHECKS_STR_SIZE ; 
 int /*<<< orphan*/  NICESTR_B ; 
 int /*<<< orphan*/  NICESTR_TIB ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (char const*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC13(const xz_file_info *xfi, file_pair *pair)
{
	static bool headings_displayed = false;
	if (!headings_displayed) {
		headings_displayed = true;
		// TRANSLATORS: These are column headings. From Strms (Streams)
		// to Ratio, the columns are right aligned. Check and Filename
		// are left aligned. If you need longer words, it's OK to
		// use two lines here. Test with "xz -l foo.xz".
		FUNC9(FUNC0("Strms  Blocks   Compressed Uncompressed  Ratio  "
				"Check   Filename"));
	}

	char checks[CHECKS_STR_SIZE];
	FUNC1(checks, FUNC4(xfi->idx), false);

	const char *cols[7] = {
		FUNC12(FUNC6(xfi->idx), 0),
		FUNC12(FUNC3(xfi->idx), 1),
		FUNC11(FUNC5(xfi->idx),
			NICESTR_B, NICESTR_TIB, false, 2),
		FUNC11(FUNC7(xfi->idx),
			NICESTR_B, NICESTR_TIB, false, 3),
		FUNC2(FUNC5(xfi->idx),
			FUNC7(xfi->idx)),
		checks,
		pair->src_name,
	};
	FUNC8("%*s %*s  %*s  %*s  %*s  %-*s %s\n",
			FUNC10(cols[0], 5), cols[0],
			FUNC10(cols[1], 7), cols[1],
			FUNC10(cols[2], 11), cols[2],
			FUNC10(cols[3], 11), cols[3],
			FUNC10(cols[4], 5), cols[4],
			FUNC10(cols[5], 7), cols[5],
			cols[6]);

	return false;
}