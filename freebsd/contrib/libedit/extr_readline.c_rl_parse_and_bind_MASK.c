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
typedef  int /*<<< orphan*/  Tokenizer ;

/* Variables and functions */
 int /*<<< orphan*/  e ; 
 int FUNC0 (int /*<<< orphan*/ ,int,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int*,char const***) ; 

int
FUNC4(const char *line)
{
	const char **argv;
	int argc;
	Tokenizer *tok;

	tok = FUNC2(NULL);
	FUNC3(tok, line, &argc, &argv);
	argc = FUNC0(e, argc, argv);
	FUNC1(tok);
	return argc ? 1 : 0;
}