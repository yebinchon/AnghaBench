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
struct glob_lim {int dummy; } ;
typedef  int /*<<< orphan*/  glob_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ const EOS ; 
 scalar_t__ const LBRACE ; 
 scalar_t__ const RBRACE ; 
 scalar_t__ FUNC0 (scalar_t__ const*,scalar_t__ const) ; 
 int FUNC1 (scalar_t__ const*,int /*<<< orphan*/ *,struct glob_lim*) ; 
 int FUNC2 (scalar_t__ const*,scalar_t__ const*,int /*<<< orphan*/ *,struct glob_lim*) ; 

__attribute__((used)) static int
FUNC3(const Char *pattern, glob_t *pglob, struct glob_lim *limitp)
{
	const Char* ptr = pattern;

	/* Protect a single {}, for find(1), like csh */
	if (pattern[0] == LBRACE && pattern[1] == RBRACE && pattern[2] == EOS)
		return FUNC1(pattern, pglob, limitp);

	if ((ptr = (const Char *) FUNC0(ptr, LBRACE)) != NULL)
		return FUNC2(ptr, pattern, pglob, limitp);

	return FUNC1(pattern, pglob, limitp);
}