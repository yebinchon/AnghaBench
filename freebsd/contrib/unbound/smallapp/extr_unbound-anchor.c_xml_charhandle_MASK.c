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
struct xml_data {char* tag; scalar_t__ use_key; int /*<<< orphan*/ * czone; } ;
typedef  int XML_Char ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int verb ; 
 int /*<<< orphan*/ * FUNC4 (struct xml_data*,char*) ; 

__attribute__((used)) static void
FUNC5(void *userData, const XML_Char *s, int len)
{
	struct xml_data* data = (struct xml_data*)userData;
	BIO* b = NULL;
	/* skip characters outside of elements */
	if(!data->tag)
		return;
	if(verb>=4) {
		int i;
		FUNC2("%s%s charhandle: '",
			data->use_key?"use ":"",
			data->tag?data->tag:"none");
		for(i=0; i<len; i++)
			FUNC2("%c", s[i]);
		FUNC2("'\n");
	}
	if(FUNC3(data->tag, "Zone") == 0) {
		if(FUNC0(data->czone, s, len) < 0) {
			if(verb) FUNC2("out of memory in BIO_write\n");
			FUNC1(0);
		}
		return;
	}
	/* only store if key is used */
	if(!data->use_key)
		return;
	b = FUNC4(data, data->tag);
	if(b) {
		if(FUNC0(b, s, len) < 0) {
			if(verb) FUNC2("out of memory in BIO_write\n");
			FUNC1(0);
		}
	}
}