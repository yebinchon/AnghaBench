#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; size_t d_namlen; } ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  dir ;
struct TYPE_6__ {char** sl_str; } ;
typedef  TYPE_1__ StringList ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 unsigned char CC_ERROR ; 
 unsigned char CC_REFRESH ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC2 (char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  el ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC6 () ; 
 char* FUNC7 (char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 struct dirent* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 size_t FUNC16 (char*) ; 
 scalar_t__ FUNC17 (char*,char*,size_t) ; 
 char* FUNC18 (char*,char) ; 

__attribute__((used)) static unsigned char
FUNC19(char *word, int list)
{
	StringList *words;
	char dir[MAXPATHLEN];
	char *file;
	DIR *dd;
	struct dirent *dp;
	unsigned char rv;
	size_t len;

	if ((file = FUNC18(word, '/')) == NULL) {
		dir[0] = '.';
		dir[1] = '\0';
		file = word;
	} else {
		if (file == word) {
			dir[0] = '/';
			dir[1] = '\0';
		} else
			(void)FUNC15(dir, word, file - word + 1);
		file++;
	}
	if (dir[0] == '~') {
		char *p;

		if ((p = FUNC8(dir)) == NULL)
			return (CC_ERROR);
		(void)FUNC15(dir, p, sizeof(dir));
		FUNC4(p);
	}

	if ((dd = FUNC9(dir)) == NULL)
		return (CC_ERROR);

	words = FUNC6();
	len = FUNC16(file);

	for (dp = FUNC10(dd); dp != NULL; dp = FUNC10(dd)) {
		if (!FUNC13(dp->d_name, ".") || !FUNC13(dp->d_name, ".."))
			continue;

#if defined(DIRENT_MISSING_D_NAMLEN)
		if (len > strlen(dp->d_name))
			continue;
#else
		if (len > dp->d_namlen)
			continue;
#endif
		if (FUNC17(file, dp->d_name, len) == 0) {
			char *tcp;

			tcp = FUNC7(dp->d_name);
			FUNC5(words, tcp);
		}
	}
	FUNC1(dd);

	rv = FUNC2(file, list, words);
	if (rv == CC_REFRESH) {
		struct stat sb;
		char path[MAXPATHLEN];

		(void)FUNC15(path, dir,		sizeof(path));
		(void)FUNC14(path, "/",		sizeof(path));
		(void)FUNC14(path, words->sl_str[0],	sizeof(path));

		if (FUNC12(path, &sb) >= 0) {
			char suffix[2] = " ";

			if (FUNC0(sb.st_mode))
				suffix[0] = '/';
			if (FUNC3(el, suffix) == -1)
				rv = CC_ERROR;
		}
	}
	FUNC11(words, 1);
	return (rv);
}