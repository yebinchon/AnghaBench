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
struct config_strlist {char const* str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* local_zones_nodefault; } ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC2(struct config_file* cfg, const char* name)
{
	struct config_strlist* p;
	size_t len = FUNC0(name);
	if(len == 0) return 0;
	if(name[len-1] == '.') len--;

	for(p = cfg->local_zones_nodefault; p; p = p->next) {
		/* compare zone name, lowercase, compare without ending . */
		if(FUNC1(p->str, name, len) == 0 && 
			(FUNC0(p->str) == len || (FUNC0(p->str)==len+1 &&
			p->str[len] == '.')))
			return 1;
	}
	return 0;
}