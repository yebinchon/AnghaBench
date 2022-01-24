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
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (char*,char*) ; 

int
FUNC14 (int argc, char **argv)
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
    
    argc = FUNC9(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC13(argv[argc], "xml"))
	    FUNC12(NULL, XO_STYLE_XML);
	else if (FUNC13(argv[argc], "json"))
	    FUNC12(NULL, XO_STYLE_JSON);
	else if (FUNC13(argv[argc], "text"))
	    FUNC12(NULL, XO_STYLE_TEXT);
	else if (FUNC13(argv[argc], "html"))
	    FUNC12(NULL, XO_STYLE_HTML);
	else if (FUNC13(argv[argc], "pretty"))
	    FUNC10(NULL, XOF_PRETTY);
	else if (FUNC13(argv[argc], "xpath"))
	    FUNC10(NULL, XOF_XPATH);
	else if (FUNC13(argv[argc], "info"))
	    FUNC10(NULL, XOF_INFO);
        else if (FUNC13(argv[argc], "error")) {
            FUNC0(-1);
            FUNC4(1, "error detected");
        }
    }

    FUNC10(NULL, XOF_KEYS);
    FUNC11("test");

    FUNC7(NULL, "top");

    FUNC6("data");
    FUNC6("contents");

    FUNC3("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC3("Name: {l:name/%-10s/%s}\n", ip->i_title);
    }

    FUNC1("contents");

    FUNC3("\n\n");
    FUNC6("contents");

    FUNC3("{T:Item/%-10s}{T:Count/%12s}\n");

    for (ip = list; ip->i_title; ip++) {
	FUNC3("Name: {l:item/%-10s/%s}\n", ip->i_title);
    }

    FUNC1("contents");

    FUNC3("\n\n");

    FUNC6("contents");
    FUNC3("{T:Test/%-10s}{T:Three/%12s}\n");

    FUNC8("item");
    for (ip = list; ip->i_title; ip++) {
	FUNC3("Name: {l:item/%-10s/%s}\n", ip->i_title);
    }
    FUNC3("{Lwc:/Total:}{:total}\n", "six");

    FUNC3("{:one}", "one");
    FUNC3("{l:two}", "two");
    FUNC3("{:three}", "three");


    FUNC1("contents");

    FUNC3("\n\n");

    FUNC2(NULL, "top");

    FUNC5();

    return 0;
}