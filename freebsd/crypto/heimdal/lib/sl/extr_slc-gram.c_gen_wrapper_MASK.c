#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type_handler {char* getarg_type; int /*<<< orphan*/  (* free ) (char*) ;int /*<<< orphan*/  (* defval ) (char*,struct assignment*) ;} ;
struct TYPE_2__ {char* value; struct assignment* assignment; } ;
struct assignment {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  cfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct assignment*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct assignment* FUNC3 (struct assignment*,char*) ; 
 struct type_handler* FUNC4 (struct assignment*) ; 
 struct assignment* FUNC5 (struct assignment*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct assignment*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC11 (struct assignment*) ; 
 char* FUNC12 (char*) ; 
 int FUNC13 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct assignment*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(struct assignment *as)
{
    struct assignment *name;
    struct assignment *arg;
    struct assignment *opt1;
    struct assignment *function;
    struct assignment *tmp;
    char *n, *f;
    int nargs = 0;
    int narguments = 0;

    name = FUNC3(as, "name");
    n = FUNC12(name->u.value);
    FUNC8(n);
    arg = FUNC3(as, "argument");
    if (arg)
        narguments++;
    opt1 = FUNC3(as, "option");
    function = FUNC3(as, "function");
    if(function)
	f = function->u.value;
    else
	f = n;


    if(opt1 != NULL) {
	FUNC9(opt1, n);
	FUNC10(0, "int %s(struct %s_options*, int, char **);\n", f, n);
    } else {
	FUNC10(0, "int %s(void*, int, char **);\n", f);
    }

    FUNC6(cfile, "static int\n");
    FUNC6(cfile, "%s_wrap(int argc, char **argv)\n", n);
    FUNC6(cfile, "{\n");
    if(opt1 != NULL)
	FUNC0(1, "struct %s_options opt;\n", n);
    FUNC0(1, "int ret;\n");
    FUNC0(1, "int optidx = 0;\n");
    FUNC0(1, "struct getargs args[] = {\n");
    for(tmp = FUNC3(as, "option");
	tmp != NULL;
	tmp = FUNC5(tmp, "option")) {
	struct assignment *type = FUNC3(tmp->u.assignment, "type");
	struct assignment *lopt = FUNC3(tmp->u.assignment, "long");
	struct assignment *sopt = FUNC3(tmp->u.assignment, "short");
	struct assignment *aarg = FUNC3(tmp->u.assignment, "argument");
	struct assignment *help = FUNC3(tmp->u.assignment, "help");

	struct type_handler *th;

	FUNC0(2, "{ ");
	if(lopt)
	    FUNC6(cfile, "\"%s\", ", lopt->u.value);
	else
	    FUNC6(cfile, "NULL, ");
	if(sopt)
	    FUNC6(cfile, "'%c', ", *sopt->u.value);
	else
	    FUNC6(cfile, "0, ");
	th = FUNC4(type);
	FUNC6(cfile, "%s, ", th->getarg_type);
	FUNC6(cfile, "NULL, ");
	if(help)
	    FUNC6(cfile, "\"%s\", ", help->u.value);
	else
	    FUNC6(cfile, "NULL, ");
	if(aarg) {
	    FUNC6(cfile, "\"%s\"", aarg->u.value);
            narguments++;
	} else
	    FUNC6(cfile, "NULL");
	FUNC6(cfile, " },\n");
    }
    FUNC0(2, "{ \"help\", 'h', arg_flag, NULL, NULL, NULL }\n");
    FUNC0(1, "};\n");
    FUNC0(1, "int help_flag = 0;\n");

    for(tmp = FUNC3(as, "option");
	tmp != NULL;
	tmp = FUNC5(tmp, "option")) {
	char *s;
	struct assignment *type = FUNC3(tmp->u.assignment, "type");

	struct assignment *defval = FUNC3(tmp->u.assignment, "default");

	struct type_handler *th;

	s = FUNC11(tmp->u.assignment);
	th = FUNC4(type);
	(*th->defval)(s, defval);
	FUNC7(s);
    }

    for(tmp = FUNC3(as, "option");
	tmp != NULL;
	tmp = FUNC5(tmp, "option")) {
	char *s;
	s = FUNC11(tmp->u.assignment);
	FUNC0(1, "args[%d].value = &opt.%s;\n", nargs++, s);
	FUNC7(s);
    }
    FUNC0(1, "args[%d].value = &help_flag;\n", nargs++);
    FUNC0(1, "if(getarg(args, %d, argc, argv, &optidx))\n", nargs);
    FUNC0(2, "goto usage;\n");

    {
	int min_args = -1;
	int max_args = -1;
	char *end;
	if(narguments == 0) {
	    max_args = 0;
	} else {
	    if((tmp = FUNC3(as, "min_args")) != NULL) {
		min_args = FUNC13(tmp->u.value, &end, 0);
		if(*end != '\0') {
		    FUNC1(tmp, "min_args is not numeric");
		    FUNC2(1);
		}
		if(min_args < 0) {
		    FUNC1(tmp, "min_args must be non-negative");
		    FUNC2(1);
		}
	    }
	    if((tmp = FUNC3(as, "max_args")) != NULL) {
		max_args = FUNC13(tmp->u.value, &end, 0);
		if(*end != '\0') {
		    FUNC1(tmp, "max_args is not numeric");
		    FUNC2(1);
		}
		if(max_args < 0) {
		    FUNC1(tmp, "max_args must be non-negative");
		    FUNC2(1);
		}
	    }
	}
	if(min_args != -1 || max_args != -1) {
	    if(min_args == max_args) {
		FUNC0(1, "if(argc - optidx != %d) {\n",
		       min_args);
		FUNC0(2, "fprintf(stderr, \"Need exactly %u parameters (%%u given).\\n\\n\", argc - optidx);\n", min_args);
		FUNC0(2, "goto usage;\n");
		FUNC0(1, "}\n");
	    } else {
		if(max_args != -1) {
		    FUNC0(1, "if(argc - optidx > %d) {\n", max_args);
		    FUNC0(2, "fprintf(stderr, \"Arguments given (%%u) are more than expected (%u).\\n\\n\", argc - optidx);\n", max_args);
		    FUNC0(2, "goto usage;\n");
		    FUNC0(1, "}\n");
		}
		if(min_args != -1) {
		    FUNC0(1, "if(argc - optidx < %d) {\n", min_args);
		    FUNC0(2, "fprintf(stderr, \"Arguments given (%%u) are less than expected (%u).\\n\\n\", argc - optidx);\n", min_args);
		    FUNC0(2, "goto usage;\n");
		    FUNC0(1, "}\n");
		}
	    }
	}
    }

    FUNC0(1, "if(help_flag)\n");
    FUNC0(2, "goto usage;\n");

    FUNC0(1, "ret = %s(%s, argc - optidx, argv + optidx);\n",
	   f, opt1 ? "&opt": "NULL");

    /* free allocated data */
    for(tmp = FUNC3(as, "option");
	tmp != NULL;
	tmp = FUNC5(tmp, "option")) {
	char *s;
	struct assignment *type = FUNC3(tmp->u.assignment, "type");
	struct type_handler *th;
	th = FUNC4(type);
	if(th->free == NULL)
	    continue;
	s = FUNC11(tmp->u.assignment);
	(*th->free)(s);
	FUNC7(s);
    }
    FUNC0(1, "return ret;\n");

    FUNC0(0, "usage:\n");
    FUNC0(1, "arg_printusage (args, %d, \"%s\", \"%s\");\n", nargs,
	   name->u.value, arg ? arg->u.value : "");
    /* free allocated data */
    for(tmp = FUNC3(as, "option");
	tmp != NULL;
	tmp = FUNC5(tmp, "option")) {
	char *s;
	struct assignment *type = FUNC3(tmp->u.assignment, "type");
	struct type_handler *th;
	th = FUNC4(type);
	if(th->free == NULL)
	    continue;
	s = FUNC11(tmp->u.assignment);
	(*th->free)(s);
	FUNC7(s);
    }
    FUNC0(1, "return 0;\n");
    FUNC0(0, "}\n");
    FUNC0(0, "\n");
}