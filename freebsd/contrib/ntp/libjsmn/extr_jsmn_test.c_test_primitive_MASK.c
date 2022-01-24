#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 scalar_t__ JSMN_PRIMITIVE ; 
 scalar_t__ JSMN_STRING ; 
 int FUNC0 (char const*,TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5() {
#ifndef JSMN_STRICT
	int r;
	jsmn_parser p;
	jsmntok_t tok[10];
	const char *js;
	js = "\"boolVar\" : true";
	FUNC2(&p);
	r = FUNC3(&p, js, FUNC4(js), tok, 10);
	FUNC1(r >= 0 && tok[0].type == JSMN_STRING
			&& tok[1].type == JSMN_PRIMITIVE);
	FUNC1(FUNC0(js, tok[0], "boolVar"));
	FUNC1(FUNC0(js, tok[1], "true"));

	js = "\"boolVar\" : false";
	FUNC2(&p);
	r = FUNC3(&p, js, FUNC4(js), tok, 10);
	FUNC1(r >= 0 && tok[0].type == JSMN_STRING
			&& tok[1].type == JSMN_PRIMITIVE);
	FUNC1(FUNC0(js, tok[0], "boolVar"));
	FUNC1(FUNC0(js, tok[1], "false"));

	js = "\"intVar\" : 12345";
	FUNC2(&p);
	r = FUNC3(&p, js, FUNC4(js), tok, 10);
	FUNC1(r >= 0 && tok[0].type == JSMN_STRING
			&& tok[1].type == JSMN_PRIMITIVE);
	FUNC1(FUNC0(js, tok[0], "intVar"));
	FUNC1(FUNC0(js, tok[1], "12345"));

	js = "\"floatVar\" : 12.345";
	FUNC2(&p);
	r = FUNC3(&p, js, FUNC4(js), tok, 10);
	FUNC1(r >= 0 && tok[0].type == JSMN_STRING
			&& tok[1].type == JSMN_PRIMITIVE);
	FUNC1(FUNC0(js, tok[0], "floatVar"));
	FUNC1(FUNC0(js, tok[1], "12.345"));

	js = "\"nullVar\" : null";
	FUNC2(&p);
	r = FUNC3(&p, js, FUNC4(js), tok, 10);
	FUNC1(r >= 0 && tok[0].type == JSMN_STRING
			&& tok[1].type == JSMN_PRIMITIVE);
	FUNC1(FUNC0(js, tok[0], "nullVar"));
	FUNC1(FUNC0(js, tok[1], "null"));
#endif
	return 0;
}