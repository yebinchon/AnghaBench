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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int MAXDEWEY ; 
 int /*<<< orphan*/  MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,int,int*,int) ; 
 char* FUNC3 (char*,char*,char*) ; 
 int FUNC4 (int*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

char *
FUNC11(char *dir, char *name, int *majorp, int *minorp, int do_dot_a)
{
	size_t		namelen;
	DIR		*dd;
	struct dirent	*dp;
	int		best_dewey[MAXDEWEY];
	int		best_ndewey;
	char		dot_a_name[MAXNAMLEN+1];
	char		dot_so_name[MAXNAMLEN+1];

	if((dd = FUNC5(dir)) == NULL)
		return NULL;

	namelen = FUNC9(name);
	best_ndewey = 0;
	dot_a_name[0] = '\0';
	dot_so_name[0] = '\0';

	while((dp = FUNC6(dd)) != NULL) {
		char *extension;

		if(FUNC9(dp->d_name) < 3 + namelen + 2 ||	/* lib+xxx+.a */
		   FUNC10(dp->d_name, "lib", 3) != 0 ||
		   FUNC10(dp->d_name + 3, name, namelen) != 0 ||
		   dp->d_name[3+namelen] != '.')
			continue;

		extension = dp->d_name + 3 + namelen + 1;	/* a or so.* */

		if(FUNC10(extension, "so.", 3) == 0) {
			int cur_dewey[MAXDEWEY];
			int cur_ndewey;

			cur_ndewey = FUNC4(cur_dewey, extension+3);
			if(cur_ndewey < 2)	/* Too few version numbers */
				continue;

			if(*majorp != -1) {	/* Need exact match on major */
				if(cur_dewey[0] != *majorp)
					continue;
				if(*minorp != -1) {  /* Need minor >= minimum */
					if(cur_dewey[1] < *minorp)
						continue;
				}
			}

			if(FUNC2(cur_dewey, cur_ndewey, best_dewey,
			   best_ndewey) <= 0)	/* No better than prior match */
				continue;

			/* We found a better match */
			FUNC8(dot_so_name, dp->d_name);
			FUNC0(cur_dewey, best_dewey,
				cur_ndewey * sizeof best_dewey[0]);
			best_ndewey = cur_ndewey;
		} else if(do_dot_a && FUNC7(extension, "a") == 0)
			FUNC8(dot_a_name, dp->d_name);
	}
	FUNC1(dd);

	if(dot_so_name[0] != '\0') {
		*majorp = best_dewey[0];
		*minorp = best_dewey[1];
		return FUNC3(dir, "/", dot_so_name);
	}

	if(dot_a_name[0] != '\0')
		return FUNC3(dir, "/", dot_a_name);

	return NULL;
}