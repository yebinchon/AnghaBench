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
struct glob_limit {int dummy; } ;
typedef  int /*<<< orphan*/  glob11_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 scalar_t__ EOS ; 
 int MAXPATHLEN ; 
 int FUNC0 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,struct glob_limit*) ; 

__attribute__((used)) static int
FUNC1(Char *pattern, glob11_t *pglob, struct glob_limit *limit)
{
	Char pathbuf[MAXPATHLEN];

	/* A null pathname is invalid -- POSIX 1003.1 sect. 2.4. */
	if (*pattern == EOS)
		return (0);
	return (FUNC0(pathbuf, pathbuf, pathbuf + MAXPATHLEN - 1,
	    pattern, pglob, limit));
}