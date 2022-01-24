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

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/ * lex_stack ; 

int/*BOOL*/
FUNC1(
	const char * path,
	const char * mode
	)
{
	if (NULL != lex_stack || NULL == path)
		return FALSE;

	lex_stack = FUNC0(path, mode);
	return (NULL != lex_stack);
}