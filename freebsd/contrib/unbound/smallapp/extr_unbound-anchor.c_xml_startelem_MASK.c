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
struct xml_data {int /*<<< orphan*/  tag; int /*<<< orphan*/  use_key; int /*<<< orphan*/ * czone; } ;
typedef  char XML_Char ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xml_data*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int verb ; 
 int /*<<< orphan*/ * FUNC7 (struct xml_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *userData, const XML_Char *name, const XML_Char **atts)
{
	struct xml_data* data = (struct xml_data*)userData;
	BIO* b;
	if(verb>=4) FUNC4("xml tag start '%s'\n", name);
	FUNC2(data->tag);
	data->tag = FUNC6(name);
	if(!data->tag) {
		if(verb) FUNC4("out of memory\n");
		FUNC1(0);
	}
	if(verb>=4) {
		int i;
		for(i=0; atts[i]; i+=2) {
			FUNC4("  %s='%s'\n", atts[i], atts[i+1]);
		}
	}
	/* handle attributes to particular types */
	if(FUNC5(name, "KeyDigest") == 0) {
		FUNC3(data, atts);
		return;
	} else if(FUNC5(name, "Zone") == 0) {
		(void)FUNC0(data->czone);
		return;
	}

	/* for other types we prepare to pick up the data */
	if(!data->use_key)
		return;
	b = FUNC7(data, data->tag);
	if(b) {
		/* empty it */
		(void)FUNC0(b);
	}
}