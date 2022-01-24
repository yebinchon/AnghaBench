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
typedef  int /*<<< orphan*/  value ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,int) ; 

__attribute__((used)) static int
FUNC4(const char *path)
{
	int input;

	input = FUNC2(path, O_RDONLY);
	if (input == -1)
		return -1;
	else {
		int value;
		FUNC0(FUNC3(input, &value, sizeof(value)), sizeof(value));
		FUNC1(input);
		return value;
	}
}