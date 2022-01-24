#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  toksmall ;
typedef  int /*<<< orphan*/  toklarge ;
struct TYPE_6__ {scalar_t__ type; int size; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 scalar_t__ JSMN_ARRAY ; 
 int JSMN_ERROR_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6() {
	int i;
	int r;
	jsmn_parser p;
	jsmntok_t toksmall[10], toklarge[10];
	const char *js;

	js = "  [ 1, true, [123, \"hello\"]]";

	for (i = 0; i < 6; i++) {
		FUNC1(&p);
		FUNC4(toksmall, 0, sizeof(toksmall));
		FUNC4(toklarge, 0, sizeof(toklarge));
		r = FUNC2(&p, js, FUNC5(js), toksmall, i);
		FUNC0(r == JSMN_ERROR_NOMEM);

		FUNC3(toklarge, toksmall, sizeof(toksmall));

		r = FUNC2(&p, js, FUNC5(js), toklarge, 10);
		FUNC0(r >= 0);

		FUNC0(toklarge[0].type == JSMN_ARRAY && toklarge[0].size == 3);
		FUNC0(toklarge[3].type == JSMN_ARRAY && toklarge[3].size == 2);
	}
	return 0;
}