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
typedef  int /*<<< orphan*/  ucl_object_t ;
struct ucl_parser {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  UCL_PARSER_NO_TIME ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ucl_parser*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucl_parser*) ; 
 scalar_t__ FUNC5 (struct ucl_parser*) ; 
 int /*<<< orphan*/ * FUNC6 (struct ucl_parser*) ; 
 struct ucl_parser* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC8 (char *uclstr)
{
	PyObject *ret;
	struct ucl_parser *parser = FUNC7 (UCL_PARSER_NO_TIME);
	bool r = FUNC3(parser, uclstr, 0);

	if (r) {
		if (FUNC5 (parser)) {
			FUNC0(PyExc_ValueError, FUNC5(parser));
			FUNC4(parser);
			ret = NULL;
			goto return_with_parser;
		} else {
			ucl_object_t *uclobj = FUNC6(parser);
			ret = FUNC1(uclobj);
			FUNC2(uclobj);
			goto return_with_parser;
		}
	}
	else {
		FUNC0(PyExc_ValueError, FUNC5 (parser));
		ret = NULL;
		goto return_with_parser;
	}

return_with_parser:
	FUNC4(parser);
	return ret;
}