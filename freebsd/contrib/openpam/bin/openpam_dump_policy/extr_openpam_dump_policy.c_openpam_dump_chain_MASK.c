#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char** optv; int flag; int optc; struct TYPE_5__* next; TYPE_1__* module; } ;
typedef  TYPE_2__ pam_chain_t ;
struct TYPE_4__ {char* path; } ;

/* Variables and functions */
 int PAM_BUF_ERR ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 

int
FUNC5(const char *name, pam_chain_t *chain)
{
	char *modname, **opt, *p;
	int i;

	for (i = 0; chain != NULL; ++i, chain = chain->next) {
		/* declare the module's struct pam_module */
		modname = FUNC4(chain->module->path, '/');
		modname = FUNC3(modname ? modname : chain->module->path);
		if (modname == NULL)
			return (PAM_BUF_ERR);
		for (p = modname; *p && *p != '.'; ++p)
			/* nothing */ ;
		*p = '\0';
		FUNC2("extern struct pam_module %s_pam_module;\n", modname);
		/* module arguments */
		FUNC2("static char *%s_%d_optv[] = {\n", name, i);
		for (opt = chain->optv; *opt; ++opt) {
			FUNC2("\t\"");
			for (p = *opt; *p; ++p) {
				if (FUNC1((unsigned char)*p) && *p != '"')
					FUNC2("%c", *p);
				else
					FUNC2("\\x%02x", (unsigned char)*p);
			}
			FUNC2("\",\n");
		}
		FUNC2("\tNULL,\n");
		FUNC2("};\n");
		/* next module in chain */
		if (chain->next != NULL)
			FUNC2("static pam_chain_t %s_%d;\n", name, i + 1);
		/* chain entry */
		FUNC2("static pam_chain_t %s_%d = {\n", name, i);
		FUNC2("\t.module = &%s_pam_module,\n", modname);
		FUNC2("\t.flag = 0x%08x,\n", chain->flag);
		FUNC2("\t.optc = %d,\n", chain->optc);
		FUNC2("\t.optv = %s_%d_optv,\n", name, i);
		if (chain->next)
			FUNC2("\t.next = &%s_%d,\n", name, i + 1);
		else
			FUNC2("\t.next = NULL,\n");
		FUNC2("};\n");
		FUNC0(modname);
	}
	return (PAM_SUCCESS);
}