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
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct passwd*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct passwd* FUNC3 (struct passwd*) ; 
 char* FUNC4 (char const*) ; 

struct passwd *
FUNC5(const char *line, int flags)
{
	struct passwd pw, *ret;
	char *bp;

	if ((bp = FUNC4(line)) == NULL)
		return (NULL);
	FUNC0(&pw);
	if (!FUNC1(bp, &pw, flags)) {
		FUNC2(bp);
		return (NULL);
	}
	ret = FUNC3(&pw);
	FUNC2(bp);
	return (ret);
}