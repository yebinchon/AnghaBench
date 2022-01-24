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
typedef  int /*<<< orphan*/  xo_emit_flags_t ;

/* Variables and functions */
 int /*<<< orphan*/  XOEF_RETAIN ; 
 int /*<<< orphan*/  XOF_COLOR ; 
 int /*<<< orphan*/  XOF_INFO ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  XOF_UNITS ; 
 int /*<<< orphan*/  XOF_XPATH ; 
 int /*<<< orphan*/  XO_STYLE_HTML ; 
 int /*<<< orphan*/  XO_STYLE_JSON ; 
 int /*<<< orphan*/  XO_STYLE_TEXT ; 
 int /*<<< orphan*/  XO_STYLE_XML ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

int
FUNC13 (int argc, char **argv)
{
    int i, count = 10;
    int mon = 0;
    xo_emit_flags_t flags = XOEF_RETAIN;
    int opt_color = 1;

    argc = FUNC8(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC12(argv[argc], "xml"))
	    FUNC11(NULL, XO_STYLE_XML);
	else if (FUNC12(argv[argc], "json"))
	    FUNC11(NULL, XO_STYLE_JSON);
	else if (FUNC12(argv[argc], "text"))
	    FUNC11(NULL, XO_STYLE_TEXT);
	else if (FUNC12(argv[argc], "html"))
	    FUNC11(NULL, XO_STYLE_HTML);
	else if (FUNC12(argv[argc], "no-color"))
	    opt_color = 0;
	else if (FUNC12(argv[argc], "pretty"))
	    FUNC10(NULL, XOF_PRETTY);
	else if (FUNC12(argv[argc], "xpath"))
	    FUNC10(NULL, XOF_XPATH);
	else if (FUNC12(argv[argc], "info"))
	    FUNC10(NULL, XOF_INFO);
	else if (FUNC12(argv[argc], "no-retain"))
	    flags &= ~XOEF_RETAIN;
	else if (FUNC12(argv[argc], "big")) {
	    if (argv[argc + 1])
		count = FUNC0(argv[++argc]);
	}
    }

    FUNC10(NULL, XOF_UNITS); /* Always test w/ this */
    if (opt_color)
	FUNC10(NULL, XOF_COLOR); /* Force color output */
    FUNC9(stdout);

    FUNC6("top");
    FUNC6("data");

    FUNC3("{C:fg-red,bg-green}Merry XMas!!{C:}\n");

    FUNC3("One {C:fg-yellow,bg-blue}{:animal}{C:}, "
	    "Two {C:fg-green,bg-yellow}{:animal}{C:}\n",
          "fish", "fish");

    const char *fmt1 = "The {C:fg-red}{k:name}{C:reset} is "
	"{C:/fg-%s}{:color}{C:reset} til {:time/%02d:%02d}\n";
    const char *fmt2 = "My {C:fg-red}{:hand}{C:reset} hand is "
	"{C:/fg-%s}{:color}{C:reset} til {:time/%02d:%02d}\n";

    for (i = 0; i < count; i++) {
	FUNC7("thing");
	FUNC4(flags, fmt1, "thing", "green", "green", 2, 15);
	FUNC4(flags, fmt2, "left", "blue", "blue", 3, 45);
    }

    FUNC6("2by4");
    FUNC3("There is {:4x4} in {:2morrow}\n", "truck", "tomorrow");
    FUNC1("2by4");


    FUNC1("data");
    FUNC2(NULL, "top");

    FUNC5();

    return 0;
}