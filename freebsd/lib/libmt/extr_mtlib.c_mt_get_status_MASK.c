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
struct mt_status_data {int /*<<< orphan*/  entries; } ;
typedef  int /*<<< orphan*/ * XML_Parser ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int XML_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mt_status_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt_status_data*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  mt_char_handler ; 
 int /*<<< orphan*/  mt_end_element ; 
 int /*<<< orphan*/  mt_start_element ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

int
FUNC9(char *xml_str, struct mt_status_data *status_data)
{
	XML_Parser parser;
	int retval;

	FUNC7(status_data, sizeof(*status_data));
	FUNC0(&status_data->entries);

	parser = FUNC2(NULL);
	if (parser == NULL) {
		errno = ENOMEM;
		return (XML_STATUS_ERROR);
	}

	FUNC6(parser, status_data);
	FUNC5(parser, mt_start_element, mt_end_element);
	FUNC4(parser, mt_char_handler);

	retval = FUNC1(parser, xml_str, FUNC8(xml_str), 1);
	FUNC3(parser);
	return (retval);
}