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
struct str_buf {char* buf; void* warning; void* error; struct str_buf* userData; } ;
typedef  struct str_buf xmlValidCtxt ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDtdPtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
typedef  int /*<<< orphan*/  vctx ;
struct xml_node_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  errors ;

/* Variables and functions */
 void* add_str ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct str_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC8 (struct str_buf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(struct xml_node_ctx *ctx, xml_node_t *node,
		     const char *dtd_fname, char **ret_err)
{
	xmlDocPtr doc;
	xmlNodePtr n;
	xmlValidCtxt vctx;
	xmlDtdPtr dtd;
	int ret;
	struct str_buf errors;

	if (ret_err)
		*ret_err = NULL;

	doc = FUNC6((xmlChar *) "1.0");
	if (doc == NULL)
		return -1;
	n = FUNC2((xmlNodePtr) node, doc, 1);
	if (n == NULL) {
		FUNC4(doc);
		return -1;
	}
	FUNC3(doc, n);

	FUNC1(&errors, 0, sizeof(errors));

	dtd = FUNC7(NULL, (const xmlChar *) dtd_fname);
	if (dtd == NULL) {
		FUNC4(doc);
		return -1;
	}

	FUNC1(&vctx, 0, sizeof(vctx));
	vctx.userData = &errors;
	vctx.error = add_str;
	vctx.warning = add_str;
	ret = FUNC8(&vctx, doc, dtd);
	FUNC4(doc);
	FUNC5(dtd);

	if (ret == 1) {
		FUNC0(errors.buf);
		return 0;
	} else {
		if (ret_err)
			*ret_err = errors.buf;
		else
			FUNC0(errors.buf);
		return -1;
	}
}