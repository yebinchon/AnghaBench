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

/* Variables and functions */
 int /*<<< orphan*/  XOF_INFO ; 
 int /*<<< orphan*/  XOF_KEYS ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  XOF_XPATH ; 
 int /*<<< orphan*/  XO_STYLE_HTML ; 
 int /*<<< orphan*/  XO_STYLE_JSON ; 
 int /*<<< orphan*/  XO_STYLE_TEXT ; 
 int /*<<< orphan*/  XO_STYLE_XML ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int FUNC14 (int,char**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*,char*) ; 

int
FUNC19 (int argc, char **argv)
{
    struct item {
	const char *i_title;
	int i_count;
    };
    struct item list[] = {
	{ "gum", 1412 },
	{ "rope", 85 },
	{ "ladder", 0 },
	{ "bolt", 4123 },
	{ "water", 17 },
	{ NULL, 0 }
    };
    struct item *ip;
    int i;
    
    argc = FUNC14(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC18(argv[argc], "xml"))
	    FUNC17(NULL, XO_STYLE_XML);
	else if (FUNC18(argv[argc], "json"))
	    FUNC17(NULL, XO_STYLE_JSON);
	else if (FUNC18(argv[argc], "text"))
	    FUNC17(NULL, XO_STYLE_TEXT);
	else if (FUNC18(argv[argc], "html"))
	    FUNC17(NULL, XO_STYLE_HTML);
	else if (FUNC18(argv[argc], "pretty"))
	    FUNC15(NULL, XOF_PRETTY);
	else if (FUNC18(argv[argc], "xpath"))
	    FUNC15(NULL, XOF_XPATH);
	else if (FUNC18(argv[argc], "info"))
	    FUNC15(NULL, XOF_INFO);
        else if (FUNC18(argv[argc], "error")) {
            FUNC0(-1);
            FUNC7(1, "error detected");
        }
    }

    FUNC15(NULL, XOF_KEYS);
    FUNC16("test");

    FUNC10(NULL, "top");

    FUNC9("data");
    FUNC9("contents");
    FUNC12("item");

    FUNC6("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
		ip->i_title, ip->i_count);

	FUNC3("item");
    }

    FUNC4("item");
    FUNC1("contents");
    FUNC1("data");

    FUNC6("\n\n");

    FUNC9("data2");
    FUNC9("contents");

    FUNC6("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
		ip->i_title, ip->i_count);
    }

    FUNC1("data2");

    FUNC6("\n\n");

    FUNC9("data3");
    FUNC13("m1");
    FUNC9("contents");

    FUNC6("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
		ip->i_title, ip->i_count);
    }

    FUNC1("data3");	/* Should be a noop */
    FUNC6("{:test}", "one");

    FUNC5("m1");
    FUNC1("data3");	/* Should be a noop */

    FUNC6("\n\n");

    FUNC9("data4");
    FUNC13("m1");
    FUNC9("contents");

    FUNC6("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{k:name/%-10s/%s}{n:count/%12u/%u}\n",
		ip->i_title, ip->i_count);
	
	FUNC13("m2");
	for (i = 0; i < 3; i++) {
	    FUNC11("sub");
	    FUNC6("{Lwc:/Name}{:name/%d} + 1 = {:next/%d}\n", i, i + 1);
	    FUNC1("data4");
	}
	FUNC5("m2");
	FUNC6("{Lwc:/Last}{:last/%d}\n", i);
    }

    FUNC1("data4");	/* Should be a noop */
    FUNC6("{:test}", "one");

    FUNC6("\n\n");

    FUNC2(NULL, "top");

    FUNC8();

    return 0;
}