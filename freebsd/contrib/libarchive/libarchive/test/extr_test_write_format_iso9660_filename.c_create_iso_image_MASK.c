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
typedef  int /*<<< orphan*/  sym255 ;
typedef  int /*<<< orphan*/  sym128 ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,char*,char*) ; 
 scalar_t__ FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 struct archive* FUNC4 () ; 
 scalar_t__ FUNC5 (struct archive*,unsigned char*,size_t,size_t*) ; 
 scalar_t__ FUNC6 (struct archive*,int) ; 
 scalar_t__ FUNC7 (struct archive*,int) ; 
 scalar_t__ FUNC8 (struct archive*) ; 
 scalar_t__ FUNC9 (struct archive*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct archive*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(unsigned char *buff, size_t buffsize, size_t *used,
    const char *opt)
{
	struct archive *a;
	int i, l, fcnt;
	const int lens[] = {
	    0, 1, 3, 5, 7, 8, 9, 29, 30, 31, 32,
		62, 63, 64, 65, 101, 102, 103, 104,
	    191, 192, 193, 194, 204, 205, 206, 207, 208,
		252, 253, 254, 255,
	    -1 };
	char fname1[256];
	char fname2[256];
	char sym1[2];
	char sym128[129];
	char sym255[256];

	/* ISO9660 format: Create a new archive in memory. */
	FUNC11((a = FUNC4()) != NULL);
	FUNC12(0 == FUNC8(a));
	FUNC12(0 == FUNC1(a));
	FUNC12(0 == FUNC9(a, NULL, "pad", NULL));
	if (opt)
		FUNC12(0 == FUNC10(a, opt));
	FUNC12(0 == FUNC7(a, 1));
	FUNC12(0 == FUNC6(a, 1));
	FUNC12(0 == FUNC5(a, buff, buffsize, used));

	sym1[0] = 'x';
	sym1[1] = '\0';
	for (i = 0; i < (int)sizeof(sym128)-2; i++)
		sym128[i] = 'a';
	sym128[sizeof(sym128)-2] = 'x';
	sym128[sizeof(sym128)-1] = '\0';
	for (i = 0; i < (int)sizeof(sym255)-2; i++)
		sym255[i] = 'a';
	sym255[sizeof(sym255)-2] = 'x';
	sym255[sizeof(sym255)-1] = '\0';

	fcnt = 0;
	for (i = 0; lens[i] >= 0; i++) {
		for (l = 0; l < lens[i]; l++) {
			fname1[l] = 'a';
			fname2[l] = 'A';
		}
		if (l > 0) {
			fname1[l] = '\0';
			fname2[l] = '\0';
			FUNC0(a, fname1, NULL);
			FUNC0(a, fname2, sym1);
			fcnt += 2;
		}
		if (l < 254) {
			fname1[l] = '.';
			fname1[l+1] = 'c';
			fname1[l+2] = '\0';
			fname2[l] = '.';
			fname2[l+1] = 'C';
			fname2[l+2] = '\0';
			FUNC0(a, fname1, sym128);
			FUNC0(a, fname2, sym255);
			fcnt += 2;
		}
		if (l < 252) {
			fname1[l] = '.';
			fname1[l+1] = 'p';
			fname1[l+2] = 'n';
			fname1[l+3] = 'g';
			fname1[l+4] = '\0';
			fname2[l] = '.';
			fname2[l+1] = 'P';
			fname2[l+2] = 'N';
			fname2[l+3] = 'G';
			fname2[l+4] = '\0';
			FUNC0(a, fname1, NULL);
			FUNC0(a, fname2, sym1);
			fcnt += 2;
		}
		if (l < 251) {
			fname1[l] = '.';
			fname1[l+1] = 'j';
			fname1[l+2] = 'p';
			fname1[l+3] = 'e';
			fname1[l+4] = 'g';
			fname1[l+5] = '\0';
			fname2[l] = '.';
			fname2[l+1] = 'J';
			fname2[l+2] = 'P';
			fname2[l+3] = 'E';
			fname2[l+4] = 'G';
			fname2[l+5] = '\0';
			FUNC0(a, fname1, sym128);
			FUNC0(a, fname2, sym255);
			fcnt += 2;
		}
	}

	/* Close out the archive. */
	FUNC13(a, ARCHIVE_OK, FUNC2(a));
	FUNC13(a, ARCHIVE_OK, FUNC3(a));

	return (fcnt);
}