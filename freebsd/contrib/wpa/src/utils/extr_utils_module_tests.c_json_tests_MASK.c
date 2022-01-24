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
struct json_token {int dummy; } ;
struct json_test_data {scalar_t__ tree; int /*<<< orphan*/  json; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned int FUNC0 (struct json_test_data*) ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct json_token*) ; 
 struct json_token* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct json_token*,char*,int) ; 
 struct json_test_data* json_test_cases ; 
 scalar_t__ FUNC4 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(void)
{
#ifdef CONFIG_JSON
	unsigned int i;
	struct json_token *root;
	char buf[1000];

	wpa_printf(MSG_INFO, "JSON tests");

	for (i = 0; i < ARRAY_SIZE(json_test_cases); i++) {
		const struct json_test_data *test = &json_test_cases[i];
		int res = 0;

		root = json_parse(test->json, os_strlen(test->json));
		if ((root && !test->tree) || (!root && test->tree)) {
			wpa_printf(MSG_INFO, "JSON test %u failed", i);
			res = -1;
		} else if (root) {
			json_print_tree(root, buf, sizeof(buf));
			if (os_strcmp(buf, test->tree) != 0) {
				wpa_printf(MSG_INFO,
					   "JSON test %u tree mismatch: %s %s",
					   i, buf, test->tree);
				res = -1;
			}
		}
		json_free(root);
		if (res < 0)
			return -1;

	}
#endif /* CONFIG_JSON */
	return 0;
}