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
 unsigned char* FUNC0 (unsigned char*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (struct xml_node_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xml_node_ctx*,char*) ; 

char * FUNC7(struct xml_node_ctx *ctx, xml_node_t *node,
				int *ret_len)
{
	char *txt;
	unsigned char *ret;
	size_t len;

	txt = FUNC5(ctx, node);
	if (txt == NULL)
		return NULL;

	ret = FUNC0((unsigned char *) txt, FUNC4(txt), &len);
	if (ret_len)
		*ret_len = len;
	FUNC6(ctx, txt);
	if (ret == NULL)
		return NULL;
	txt = FUNC2(len + 1);
	if (txt == NULL) {
		FUNC1(ret);
		return NULL;
	}
	FUNC3(txt, ret, len);
	txt[len] = '\0';
	return txt;
}