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
struct TYPE_3__ {scalar_t__ type; int start; int end; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 scalar_t__ JSMN_ARRAY ; 
 scalar_t__ JSMN_OBJECT ; 
 scalar_t__ JSMN_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4() {
	const char *js;
	int r;
	jsmn_parser p;
	jsmntok_t t[10];

	js = "{}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), t, 10);
	FUNC0(r >= 0);
	FUNC0(t[0].type == JSMN_OBJECT);
	FUNC0(t[0].start == 0 && t[0].end == 2);

	js = "[]";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), t, 10);
	FUNC0(r >= 0);
	FUNC0(t[0].type == JSMN_ARRAY);
	FUNC0(t[0].start == 0 && t[0].end == 2);

	js = "{\"a\":[]}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), t, 10);
	FUNC0(r >= 0);
	FUNC0(t[0].type == JSMN_OBJECT && t[0].start == 0 && t[0].end == 8);
	FUNC0(t[1].type == JSMN_STRING && t[1].start == 2 && t[1].end == 3);
	FUNC0(t[2].type == JSMN_ARRAY && t[2].start == 5 && t[2].end == 7);

	js = "[{},{}]";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), t, 10);
	FUNC0(r >= 0);
	FUNC0(t[0].type == JSMN_ARRAY && t[0].start == 0 && t[0].end == 7);
	FUNC0(t[1].type == JSMN_OBJECT && t[1].start == 1 && t[1].end == 3);
	FUNC0(t[2].type == JSMN_OBJECT && t[2].start == 4 && t[2].end == 6);
	return 0;
}