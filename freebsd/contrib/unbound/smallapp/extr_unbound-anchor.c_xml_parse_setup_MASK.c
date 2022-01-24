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
typedef  int /*<<< orphan*/  time_t ;
struct xml_data {void* ds; void* cdigest; void* cdigtype; void* czone; void* calgo; void* ctag; int /*<<< orphan*/  date; int /*<<< orphan*/  parser; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  XML_Parser ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct xml_data*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xml_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  xml_charhandle ; 
 int /*<<< orphan*/  xml_endelem ; 
 int /*<<< orphan*/  xml_entitydeclhandler ; 
 int /*<<< orphan*/  xml_startelem ; 

__attribute__((used)) static void
FUNC13(XML_Parser parser, struct xml_data* data, time_t now)
{
	char buf[1024];
	FUNC9(data, 0, sizeof(*data));
	FUNC6(parser, data);
	data->parser = parser;
	data->date = now;
	data->ds = FUNC0(FUNC1());
	data->ctag = FUNC0(FUNC1());
	data->czone = FUNC0(FUNC1());
	data->calgo = FUNC0(FUNC1());
	data->cdigtype = FUNC0(FUNC1());
	data->cdigest = FUNC0(FUNC1());
	if(!data->ds || !data->ctag || !data->calgo || !data->czone ||
		!data->cdigtype || !data->cdigest) {
		if(verb) FUNC10("out of memory\n");
		FUNC8(0);
	}
	FUNC11(buf, sizeof(buf), "; created by unbound-anchor on %s",
		FUNC7(&now));
	if(FUNC2(data->ds, buf, (int)FUNC12(buf)) < 0) {
		if(verb) FUNC10("out of memory\n");
		FUNC8(0);
	}
	FUNC5(parser, xml_entitydeclhandler);
	FUNC4(parser, xml_startelem, xml_endelem);
	FUNC3(parser, xml_charhandle);
}