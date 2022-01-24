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
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_EXTENDED ; 
 scalar_t__ REG_NOMATCH ; 
 int REG_NOSUB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	regex_t	 re;

	if (FUNC0(&re, "\\<word\\>", REG_EXTENDED | REG_NOSUB))
		return 1;
	if (FUNC1(&re, "the word is here", 0, NULL, 0))
		return 2;
	if (FUNC1(&re, "same word", 0, NULL, 0))
		return 3;
	if (FUNC1(&re, "word again", 0, NULL, 0))
		return 4;
	if (FUNC1(&re, "word", 0, NULL, 0))
		return 5;
	if (FUNC1(&re, "wordy", 0, NULL, 0) != REG_NOMATCH)
		return 6;
	if (FUNC1(&re, "sword", 0, NULL, 0) != REG_NOMATCH)
		return 7;
	if (FUNC1(&re, "reworded", 0, NULL, 0) != REG_NOMATCH)
		return 8;
	return 0;
}