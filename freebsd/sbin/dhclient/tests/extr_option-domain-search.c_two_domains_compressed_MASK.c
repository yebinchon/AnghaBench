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
struct packet {struct option_data* options; } ;
struct option_data {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 size_t DHO_DOMAIN_SEARCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  env ; 
 int /*<<< orphan*/  FUNC1 (struct packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 

void
FUNC8()
{
	int ret;
	struct packet p;
	struct option_data *option;

	char *data     = "\007example\003org\0\006foobar\xc0\x08";
	char *expected = "example.org. foobar.org.";

	option = &p.options[DHO_DOMAIN_SEARCH];
	option->len  = 22;
	option->data = FUNC3(option->len);
	FUNC4(option->data, data, option->len);

	ret = FUNC5(env);
	if (ret == 0)
		FUNC1(&p);

	if (option->len != FUNC7(expected) ||
	    FUNC6(option->data, expected) != 0)
		FUNC0();

	FUNC2(option->data);
}