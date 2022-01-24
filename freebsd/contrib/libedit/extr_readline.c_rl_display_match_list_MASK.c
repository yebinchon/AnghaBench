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
 int /*<<< orphan*/  _rl_completion_append_character_function ; 
 int /*<<< orphan*/  e ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**,size_t,size_t,int /*<<< orphan*/ ) ; 

void
FUNC1(char **matches, int len, int max)
{

	FUNC0(e, matches, (size_t)len, (size_t)max,
		_rl_completion_append_character_function);
}