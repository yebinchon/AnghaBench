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
 int FUNC0 (char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int) ; 

int FUNC4() {
	const char *js;
	int r;
	jsmn_parser p;
	jsmntok_t tokens[10];

	js = "{\"a\": 0}garbage";

	FUNC2(&p);
	r = FUNC3(&p, js, 8, tokens, 10);
	FUNC1(r == 3);
	FUNC1(FUNC0(js, tokens[0], "{\"a\": 0}"));
	FUNC1(FUNC0(js, tokens[1], "a"));
	FUNC1(FUNC0(js, tokens[2], "0"));

	return 0;
}