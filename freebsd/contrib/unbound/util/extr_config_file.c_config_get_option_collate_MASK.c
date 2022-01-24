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
struct config_strlist {int dummy; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct config_strlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_strlist*) ; 
 int FUNC2 (struct config_file*,char const*,struct config_strlist**) ; 

int
FUNC3(struct config_file* cfg, const char* opt, char** str)
{
	struct config_strlist* list = NULL;
	int r;
	*str = NULL;
	if((r = FUNC2(cfg, opt, &list)) != 0)
		return r;
	*str = FUNC0(list);
	FUNC1(list);
	if(!*str) return 2;
	return 0;
}