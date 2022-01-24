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
struct config_file {int num_tags; char** tagname; } ;

/* Variables and functions */
 int FUNC0 (struct config_file*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char**,char**,int) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(struct config_file* cfg, const char* tag)
{
	char** newarray;
	char* newtag;
	if(FUNC0(cfg, tag) != -1)
		return 1; /* nothing to do */
	newarray = (char**)FUNC2(sizeof(char*)*(cfg->num_tags+1));
	if(!newarray)
		return 0;
	newtag = FUNC4(tag);
	if(!newtag) {
		FUNC1(newarray);
		return 0;
	}
	if(cfg->tagname) {
		FUNC3(newarray, cfg->tagname, sizeof(char*)*cfg->num_tags);
		FUNC1(cfg->tagname);
	}
	newarray[cfg->num_tags++] = newtag;
	cfg->tagname = newarray;
	return 1;
}