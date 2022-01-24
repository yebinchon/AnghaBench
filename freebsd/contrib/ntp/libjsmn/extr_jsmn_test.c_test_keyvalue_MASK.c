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
struct TYPE_3__ {int size; } ;
typedef  TYPE_1__ jsmntok_t ;
typedef  int /*<<< orphan*/  jsmn_parser ;

/* Variables and functions */
 int JSMN_ERROR_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4() {
	const char *js;
	int r;
	jsmn_parser p;
	jsmntok_t tokens[10];

	js = "{\"a\": 0, \"b\": \"c\"}";

	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == 5);
	FUNC0(tokens[0].size == 2); /* two keys */
	FUNC0(tokens[1].size == 1 && tokens[3].size == 1); /* one value per key */
	FUNC0(tokens[2].size == 0 && tokens[4].size == 0); /* values have zero size */

	js = "{\"a\"\n0}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);

	js = "{\"a\", 0}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);

	js = "{\"a\": {2}}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);

	js = "{\"a\": {2: 3}}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);


	js = "{\"a\": {\"a\": 2 3}}";
	FUNC1(&p);
	r = FUNC2(&p, js, FUNC3(js), tokens, 10);
	FUNC0(r == JSMN_ERROR_INVAL);
	return 0;
}