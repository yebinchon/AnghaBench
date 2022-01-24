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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *arg, uint64_t *before, uint64_t *after)
{
	char *ptr;
	char *before_str;
	char *after_str;

	ptr = FUNC1(optarg, ':');
	if (!ptr || !(*(ptr + 1))) {
		FUNC0(stderr, "invalid input '%s'\n", arg);
		return -1;
	}
	(*ptr) = '\0';
	before_str = arg;
	after_str = ptr + 1;

	(*before) = FUNC2(before_str, 0, 0);
	(*after) = FUNC2(after_str, 0, 0);
	return 0;
}