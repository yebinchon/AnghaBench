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
struct roff_man {int /*<<< orphan*/  roff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char**,int,int*) ; 

__attribute__((used)) static int
FUNC2(struct roff_man *man, int line, int *pos, char *buf, char **v)
{
	char	 *start;

	FUNC0(*pos);
	*v = start = buf + *pos;
	FUNC0(' ' != *start);

	if ('\0' == *start)
		return 0;

	*v = FUNC1(man->roff, v, line, pos);
	return 1;
}