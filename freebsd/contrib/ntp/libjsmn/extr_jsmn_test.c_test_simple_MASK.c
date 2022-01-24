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
typedef  int /*<<< orphan*/  jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 int /*<<< orphan*/  JSMN_OBJECT ; 
 int /*<<< orphan*/  JSMN_PRIMITIVE ; 
 int /*<<< orphan*/  JSMN_STRING ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

int FUNC6() {
	const char *js;
	int r;
	jsmn_parser p;
	jsmntok_t tokens[10];

	js = "{\"a\": 0}";

	FUNC3(&p);
	r = FUNC4(&p, js, FUNC5(js), tokens, 10);
	FUNC2(r >= 0);
	FUNC2(FUNC0(tokens[0], 0, 8, JSMN_OBJECT));
	FUNC2(FUNC0(tokens[1], 2, 3, JSMN_STRING));
	FUNC2(FUNC0(tokens[2], 6, 7, JSMN_PRIMITIVE));

	FUNC2(FUNC1(js, tokens[0], js));
	FUNC2(FUNC1(js, tokens[1], "a"));
	FUNC2(FUNC1(js, tokens[2], "0"));

	FUNC3(&p);
	js = "[\"a\":{},\"b\":{}]";
	r = FUNC4(&p, js, FUNC5(js), tokens, 10);
	FUNC2(r >= 0);

	FUNC3(&p);
	js = "{\n \"Day\": 26,\n \"Month\": 9,\n \"Year\": 12\n }";
	r = FUNC4(&p, js, FUNC5(js), tokens, 10);
	FUNC2(r >= 0);

	return 0;
}