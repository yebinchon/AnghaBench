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
 int JSMN_ERROR_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4() {
	int r;
	jsmn_parser p;
	jsmntok_t tokens[10];
	const char *js;

	js = "[10}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);

	js = "[10]";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r >= 0);

	js = "{\"a\": 1]";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);

	js = "{\"a\": 1}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r >= 0);

	return 0;
}