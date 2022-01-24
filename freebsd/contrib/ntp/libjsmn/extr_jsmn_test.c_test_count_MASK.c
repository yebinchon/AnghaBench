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
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4() {
	jsmn_parser p;
	const char *js;

	js = "{}";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 1);

	js = "[]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 1);

	js = "[[]]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 2);

	js = "[[], []]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 3);

	js = "[[], []]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 3);

	js = "[[], [[]], [[], []]]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 7);

	js = "[\"a\", [[], []]]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 5);

	js = "[[], \"[], [[]]\", [[]]]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 5);

	js = "[1, 2, 3]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 4);

	js = "[1, 2, [3, \"a\"], null]";
	FUNC1(&p);
	FUNC0(FUNC2(&p, js, FUNC3(js), NULL, 0) == 7);

	return 0;
}