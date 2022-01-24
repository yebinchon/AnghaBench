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
typedef  int /*<<< orphan*/  xml_node_t ;
struct xml_node_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 

int FUNC5(struct xml_node_ctx *ctx, const char *fname, xml_node_t *node)
{
	FILE *f;
	char *str;

	str = FUNC4(ctx, node);
	if (str == NULL)
		return -1;

	f = FUNC1(fname, "w");
	if (!f) {
		FUNC3(str);
		return -1;
	}

	FUNC2(f, "%s\n", str);
	FUNC3(str);
	FUNC0(f);

	return 0;
}