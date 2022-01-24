#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int size; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 scalar_t__ JSMN_ARRAY ; 
 int JSMN_ERROR_PART ; 
 scalar_t__ JSMN_PRIMITIVE ; 
 scalar_t__ JSMN_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4() {
	int r;
	jsmn_parser p;
	jsmntok_t tok[10];
	const char *js;

	FUNC1(&p);
	js = "  [ 1, true, ";
	r = FUNC2(&p, js, FUNC3(js), tok, 10);
	FUNC0(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
			&& tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE);

	js = "  [ 1, true, [123, \"hello";
	r = FUNC2(&p, js, FUNC3(js), tok, 10);
	FUNC0(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
			&& tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
			&& tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE);

	js = "  [ 1, true, [123, \"hello\"]";
	r = FUNC2(&p, js, FUNC3(js), tok, 10);
	FUNC0(r == JSMN_ERROR_PART && tok[0].type == JSMN_ARRAY
			&& tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
			&& tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE
			&& tok[5].type == JSMN_STRING);
	/* check child nodes of the 2nd array */
	FUNC0(tok[3].size == 2);

	js = "  [ 1, true, [123, \"hello\"]]";
	r = FUNC2(&p, js, FUNC3(js), tok, 10);
	FUNC0(r >= 0 && tok[0].type == JSMN_ARRAY
			&& tok[1].type == JSMN_PRIMITIVE && tok[2].type == JSMN_PRIMITIVE
			&& tok[3].type == JSMN_ARRAY && tok[4].type == JSMN_PRIMITIVE
			&& tok[5].type == JSMN_STRING);
	FUNC0(tok[3].size == 2);
	FUNC0(tok[0].size == 3);
	return 0;
}