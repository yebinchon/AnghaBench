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
typedef  int /*<<< orphan*/  xmlNodePtr ;
typedef  int /*<<< orphan*/  xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct xml_node_ctx {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

char * FUNC9(struct xml_node_ctx *ctx, xml_node_t *node)
{
	xmlChar *buf;
	int bufsiz;
	char *ret, *pos;
	xmlNodePtr n = (xmlNodePtr) node;
	xmlDocPtr doc;

	doc = FUNC8((xmlChar *) "1.0");
	n = FUNC3(n, doc, 1);
	FUNC5(doc, n);
	FUNC4(doc, &buf, &bufsiz, 0);
	FUNC7(doc);
	if (!buf)
		return NULL;
	pos = (char *) buf;
	if (FUNC2(pos, "<?xml", 5) == 0) {
		pos = FUNC1(pos, '>');
		if (pos)
			pos++;
		while (pos && (*pos == '\r' || *pos == '\n'))
			pos++;
	}
	if (pos)
		ret = FUNC0(pos);
	else
		ret = NULL;
	FUNC6(buf);

	if (ret) {
		pos = ret;
		if (pos[0]) {
			while (pos[1])
				pos++;
		}
		while (pos >= ret && *pos == '\n')
			*pos-- = '\0';
	}

	return ret;
}