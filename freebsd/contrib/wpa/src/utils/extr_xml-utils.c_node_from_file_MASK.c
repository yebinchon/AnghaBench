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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 char* FUNC2 (char const*,size_t*) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (struct xml_node_ctx*,char*) ; 

xml_node_t * FUNC6(struct xml_node_ctx *ctx, const char *name)
{
	xml_node_t *node;
	char *buf, *buf2, *start;
	size_t len;

	buf = FUNC2(name, &len);
	if (buf == NULL)
		return NULL;
	buf2 = FUNC3(buf, len + 1);
	if (buf2 == NULL) {
		FUNC0(buf);
		return NULL;
	}
	buf = buf2;
	buf[len] = '\0';

	start = FUNC4(buf, "<!DOCTYPE ");
	if (start) {
		char *pos = start + 1;
		int count = 1;
		while (*pos) {
			if (*pos == '<')
				count++;
			else if (*pos == '>') {
				count--;
				if (count == 0) {
					pos++;
					break;
				}
			}
			pos++;
		}
		if (count == 0) {
			/* Remove DOCTYPE to allow the file to be parsed */
			FUNC1(start, ' ', pos - start);
		}
	}

	node = FUNC5(ctx, buf);
	FUNC0(buf);

	return node;
}