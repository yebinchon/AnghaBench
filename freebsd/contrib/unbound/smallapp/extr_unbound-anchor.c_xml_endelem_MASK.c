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
struct xml_data {int /*<<< orphan*/  czone; scalar_t__ use_key; int /*<<< orphan*/ * tag; } ;
typedef  char XML_Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int verb ; 
 int /*<<< orphan*/  FUNC4 (struct xml_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(void *userData, const XML_Char *name)
{
	struct xml_data* data = (struct xml_data*)userData;
	if(verb>=4) FUNC2("xml tag end   '%s'\n", name);
	FUNC1(data->tag);
	data->tag = NULL;
	if(FUNC3(name, "KeyDigest") == 0) {
		if(data->use_key)
			FUNC4(data);
		data->use_key = 0;
	} else if(FUNC3(name, "Zone") == 0) {
		if(!FUNC5(data->czone, ".")) {
			if(verb) FUNC2("xml not for the right zone\n");
			FUNC0(0);
		}
	}
}