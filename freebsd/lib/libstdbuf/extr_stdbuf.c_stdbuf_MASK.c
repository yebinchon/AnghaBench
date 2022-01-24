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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) __attribute__ ((constructor)) static void
FUNC2(void)
{
	char *i_mode, *o_mode, *e_mode;

	i_mode = FUNC1("_STDBUF_I");
	o_mode = FUNC1("_STDBUF_O");
	e_mode = FUNC1("_STDBUF_E");

	if (e_mode != NULL)
		FUNC0(stderr, e_mode);
	if (i_mode != NULL)
		FUNC0(stdin, i_mode);
	if (o_mode != NULL)
		FUNC0(stdout, o_mode);
}