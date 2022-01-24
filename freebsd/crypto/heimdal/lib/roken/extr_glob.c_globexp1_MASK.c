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
typedef  int /*<<< orphan*/  glob_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ const CHAR_EOS ; 
 scalar_t__ const CHAR_LBRACE ; 
 scalar_t__ const CHAR_RBRACE ; 
 scalar_t__ FUNC0 (scalar_t__ const*,scalar_t__ const) ; 
 int FUNC1 (scalar_t__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*,scalar_t__ const*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC3(const Char *pattern, glob_t *pglob)
{
	const Char* ptr = pattern;
	int rv;

	/* Protect a single {}, for find(1), like csh */
	if (pattern[0] == CHAR_LBRACE && pattern[1] == CHAR_RBRACE && pattern[2] == CHAR_EOS)
		return FUNC1(pattern, pglob);

	while ((ptr = (const Char *) FUNC0(ptr, CHAR_LBRACE)) != NULL)
		if (!FUNC2(ptr, pattern, pglob, &rv))
			return rv;

	return FUNC1(pattern, pglob);
}