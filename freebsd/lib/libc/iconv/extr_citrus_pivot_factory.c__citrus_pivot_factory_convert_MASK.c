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
struct src_head {int dummy; } ;
struct _region {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct src_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*) ; 
 int /*<<< orphan*/  FUNC2 (struct _region*) ; 
 int FUNC3 (struct src_head*,char*,size_t) ; 
 int FUNC4 (struct src_head*,struct _region*) ; 
 int errno ; 
 char* FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct src_head*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC8(FILE *out, FILE *in)
{
	struct src_head sh;
	struct _region r;
	char *line;
	size_t size;
	int ret;

	FUNC0(&sh);

	while ((line = FUNC5(in, &size)) != NULL)
		if ((ret = FUNC3(&sh, line, size))) {
			FUNC6(&sh);
			return (ret);
		}

	ret = FUNC4(&sh, &r);
	FUNC6(&sh);
	if (ret)
		return (ret);

	if (FUNC7(FUNC1(&r), FUNC2(&r), 1, out) != 1)
		return (errno);

	return (0);
}