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
struct iter_hints {int dummy; } ;
struct config_strlist {char* str; struct config_strlist* next; } ;
struct config_file {scalar_t__* chrootdir; struct config_strlist* root_hints; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_hints*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC4(struct iter_hints* hints, struct config_file* cfg)
{
	struct config_strlist* p;
	for(p = cfg->root_hints; p; p = p->next) {
		FUNC0(p->str);
		if(p->str && p->str[0]) {
			char* f = p->str;
			if(cfg->chrootdir && cfg->chrootdir[0] &&
				FUNC3(p->str, cfg->chrootdir, 
				FUNC2(cfg->chrootdir)) == 0)
				f += FUNC2(cfg->chrootdir);
			if(!FUNC1(hints, f))
				return 0;
		}
	}
	return 1;
}