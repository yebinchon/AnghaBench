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
typedef  int /*<<< orphan*/  uint8_t ;
struct config_file {scalar_t__ num_tags; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC2 (struct config_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char**,char*) ; 

uint8_t* FUNC6(struct config_file* cfg, char* str,
        size_t* listlen)
{
	uint8_t* taglist = NULL;
	size_t len = 0;
	char* p, *s;

	/* allocate */
	if(cfg->num_tags == 0) {
		FUNC4("parse taglist, but no tags defined");
		return 0;
	}
	len = (size_t)(cfg->num_tags+7)/8;
	taglist = FUNC0(1, len);
	if(!taglist) {
		FUNC4("out of memory");
		return 0;
	}
	
	/* parse */
	s = str;
	while((p=FUNC5(&s, " \t\n")) != NULL) {
		if(*p) {
			int id = FUNC2(cfg, p);
			/* set this bit in the bitlist */
			if(id == -1) {
				FUNC4("unknown tag: %s", p);
				FUNC3(taglist);
				return 0;
			}
			FUNC1(taglist, len, id);
		}
	}

	*listlen = len;
	return taglist;
}