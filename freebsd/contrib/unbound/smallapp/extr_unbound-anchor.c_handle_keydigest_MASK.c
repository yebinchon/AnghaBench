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
typedef  scalar_t__ time_t ;
struct xml_data {int use_key; scalar_t__ date; int /*<<< orphan*/  cdigest; int /*<<< orphan*/  cdigtype; int /*<<< orphan*/  calgo; int /*<<< orphan*/  ctag; } ;
typedef  int /*<<< orphan*/  XML_Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const**,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ verb ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct xml_data* data, const XML_Char **atts)
{
	data->use_key = 0;
	if(FUNC2(atts, "validFrom")) {
		time_t from = FUNC4(FUNC2(atts, "validFrom"));
		if(from == 0) {
			if(verb) FUNC3("error: xml cannot be parsed\n");
			FUNC1(0);
		}
		if(data->date < from)
			return;
	}
	if(FUNC2(atts, "validUntil")) {
		time_t until = FUNC4(FUNC2(atts, "validUntil"));
		if(until == 0) {
			if(verb) FUNC3("error: xml cannot be parsed\n");
			FUNC1(0);
		}
		if(data->date > until)
			return;
	}
	/* yes we want to use this key */
	data->use_key = 1;
	(void)FUNC0(data->ctag);
	(void)FUNC0(data->calgo);
	(void)FUNC0(data->cdigtype);
	(void)FUNC0(data->cdigest);
}