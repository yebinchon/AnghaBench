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
struct roff {int dummy; } ;

/* Variables and functions */
 int ROFFNUM_WHITE ; 
 int /*<<< orphan*/  FUNC0 (struct roff*,int,char const*,int*,int*,int) ; 
 int FUNC1 (char const*,int*,int*,int) ; 

__attribute__((used)) static int
FUNC2(struct roff *r, int ln,
	const char *v, int *pos, int *res, int flags)
{

	if ('(' != v[*pos])
		return FUNC1(v, pos, res, flags);

	(*pos)++;
	if ( ! FUNC0(r, ln, v, pos, res, flags | ROFFNUM_WHITE))
		return 0;

	/*
	 * Omission of the closing parenthesis
	 * is an error in validation mode,
	 * but ignored in evaluation mode.
	 */

	if (')' == v[*pos])
		(*pos)++;
	else if (NULL == res)
		return 0;

	return 1;
}