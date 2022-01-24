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

void
FUNC6()
{
	int ret;
	struct option_data *option;
	struct packet p;

	char *data = "\007example\003org";

	option = &p.options[DHO_DOMAIN_SEARCH];
	option->len  = 12;
	option->data = FUNC3(option->len);
	FUNC4(option->data, data, option->len);

	ret = FUNC5(env);
	if (ret == 0)
		FUNC1(&p);

	if (ret != 1)
		FUNC0();

	FUNC2(option->data);
}