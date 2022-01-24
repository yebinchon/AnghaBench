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
struct module_stack {int num; struct module_func_block** mod; } ;
struct module_func_block {int dummy; } ;
typedef  int /*<<< orphan*/  md ;

/* Variables and functions */
 int MAX_MODULE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct module_func_block* FUNC3 (char const**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char const*) ; 
 scalar_t__* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

int 
FUNC7(struct module_stack* stack, const char* module_conf)
{
        int i;
        FUNC6(VERB_QUERY, "module config: \"%s\"", module_conf);
        stack->num = FUNC1(module_conf);
        if(stack->num == 0) {
                FUNC2("error: no modules specified");
                return 0;
        }
        if(stack->num > MAX_MODULE) {
                FUNC2("error: too many modules (%d max %d)",
                        stack->num, MAX_MODULE);
                return 0;
        }
        stack->mod = (struct module_func_block**)FUNC0((size_t)
                stack->num, sizeof(struct module_func_block*));
        if(!stack->mod) {
                FUNC2("out of memory");
                return 0;
        }
        for(i=0; i<stack->num; i++) {
                stack->mod[i] = FUNC3(&module_conf);
                if(!stack->mod[i]) {
			char md[256];
			FUNC4(md, sizeof(md), "%s", module_conf);
			if(FUNC5(md, ' ')) *(FUNC5(md, ' ')) = 0;
			if(FUNC5(md, '\t')) *(FUNC5(md, '\t')) = 0;
                        FUNC2("Unknown value in module-config, module: '%s'."
				" This module is not present (not compiled in),"
				" See the list of linked modules with unbound -h",
                                md);
                        return 0;
                }
        }
        return 1;
}