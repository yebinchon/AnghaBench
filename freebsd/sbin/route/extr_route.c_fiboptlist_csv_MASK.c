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
struct fibl_head_t {int dummy; } ;
struct fibl {int fl_num; } ;

/* Variables and functions */
 int ALLSTRLEN ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fibl_head_t*,struct fibl*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 int defaultfib ; 
 scalar_t__ errno ; 
 int FUNC2 (char*,struct fibl_head_t*) ; 
 int /*<<< orphan*/  fl_next ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int numfibs ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char**,char*) ; 
 int FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(const char *arg, struct fibl_head_t *flh)
{
	struct fibl *fl;
	char *str0, *str, *token, *endptr;
	int fib, error;

	str0 = str = NULL;
	if (FUNC6("all", arg) == 0) {
		str = FUNC1(1, ALLSTRLEN);
		if (str == NULL) {
			error = 1;
			goto fiboptlist_csv_ret;
		}
		if (numfibs > 1)
			FUNC4(str, ALLSTRLEN - 1, "%d-%d", 0, numfibs - 1);
		else
			FUNC4(str, ALLSTRLEN - 1, "%d", 0);
	} else if (FUNC6("default", arg) == 0) {
		str0 = str = FUNC1(1, ALLSTRLEN);
		if (str == NULL) {
			error = 1;
			goto fiboptlist_csv_ret;
		}
		FUNC4(str, ALLSTRLEN - 1, "%d", defaultfib);
	} else
		str0 = str = FUNC7(arg);

	error = 0;
	while ((token = FUNC8(&str, ",")) != NULL) {
		if (*token != '-' && FUNC5(token, '-') != NULL) {
			error = FUNC2(token, flh);
			if (error)
				goto fiboptlist_csv_ret;
		} else {
			errno = 0;
			fib = FUNC9(token, &endptr, 0);
			if (errno == 0) {
				if (*endptr != '\0' ||
				    fib < 0 ||
				    (numfibs != -1 && fib > numfibs - 1))
					errno = EINVAL;
			}
			if (errno) {
				error = 1;
				goto fiboptlist_csv_ret;
			}
			fl = FUNC1(1, sizeof(*fl));
			if (fl == NULL) {
				error = 1;
				goto fiboptlist_csv_ret;
			}
			fl->fl_num = fib;
			FUNC0(flh, fl, fl_next);
		}
	}
fiboptlist_csv_ret:
	if (str0 != NULL)
		FUNC3(str0);
	return (error);
}