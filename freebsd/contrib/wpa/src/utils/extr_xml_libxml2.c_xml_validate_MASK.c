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
typedef  int /*<<< orphan*/  xmlSchemaValidityWarningFunc ;
typedef  int /*<<< orphan*/  xmlSchemaValidityErrorFunc ;
typedef  int /*<<< orphan*/  xmlSchemaValidCtxtPtr ;
typedef  int /*<<< orphan*/  xmlSchemaPtr ;
typedef  int /*<<< orphan*/  xmlSchemaParserCtxtPtr ;
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/ * xmlDocPtr ;
typedef  int /*<<< orphan*/  xmlChar ;
struct xml_node_ctx {int dummy; } ;
struct str_buf {char* buf; } ;
typedef  int /*<<< orphan*/  errors ;

/* Variables and functions */
 scalar_t__ add_str ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct str_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct str_buf*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct str_buf*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct xml_node_ctx *ctx, xml_node_t *node,
		 const char *xml_schema_fname, char **ret_err)
{
	xmlDocPtr doc;
	xmlNodePtr n;
	xmlSchemaParserCtxtPtr pctx;
	xmlSchemaValidCtxtPtr vctx;
	xmlSchemaPtr schema;
	int ret;
	struct str_buf errors;

	if (ret_err)
		*ret_err = NULL;

	doc = FUNC5((xmlChar *) "1.0");
	if (doc == NULL)
		return -1;
	n = FUNC2((xmlNodePtr) node, doc, 1);
	if (n == NULL) {
		FUNC4(doc);
		return -1;
	}
	FUNC3(doc, n);

	FUNC1(&errors, 0, sizeof(errors));

	pctx = FUNC9(xml_schema_fname);
	FUNC12(pctx, (xmlSchemaValidityErrorFunc) add_str,
				 (xmlSchemaValidityWarningFunc) add_str,
				 &errors);
	schema = FUNC11(pctx);
	FUNC7(pctx);

	vctx = FUNC10(schema);
	FUNC13(vctx, (xmlSchemaValidityErrorFunc) add_str,
				(xmlSchemaValidityWarningFunc) add_str,
				&errors);

	ret = FUNC14(vctx, doc);
	FUNC8(vctx);
	FUNC4(doc);
	FUNC6(schema);

	if (ret == 0) {
		FUNC0(errors.buf);
		return 0;
	} else if (ret > 0) {
		if (ret_err)
			*ret_err = errors.buf;
		else
			FUNC0(errors.buf);
		return -1;
	} else {
		if (ret_err)
			*ret_err = errors.buf;
		else
			FUNC0(errors.buf);
		return -1;
	}
}