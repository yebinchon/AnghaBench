#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* member_0; char* member_1; char* member_2; } ;
typedef  TYPE_1__ xo_info_t ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  XOF_COLOR ; 
 int /*<<< orphan*/  XOF_INFO ; 
 int /*<<< orphan*/  XOF_KEYS ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  XOF_XPATH ; 
 int /*<<< orphan*/  XO_STYLE_HTML ; 
 int /*<<< orphan*/  XO_STYLE_JSON ; 
 int /*<<< orphan*/  XO_STYLE_TEXT ; 
 int /*<<< orphan*/  XO_STYLE_XML ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 

int
FUNC19 (int argc, char **argv)
{
    static char base_grocery[] = "GRO";
    static char base_hardware[] = "HRD";
    struct item {
	const char *i_title;
	int i_sold;
	int i_instock;
	int i_onorder;
	const char *i_sku_base;
	int i_sku_num;
    };
    struct item list[] = {
	{ "gum", 1412, 54, 10, base_grocery, 415 },
	{ "rope", 85, 4, 2, base_hardware, 212 },
	{ "ladder", 0, 2, 1, base_hardware, 517 },
	{ "bolt", 4123, 144, 42, base_hardware, 632 },
	{ "water", 17, 14, 2, base_grocery, 2331 },
	{ NULL, 0, 0, 0, NULL, 0 }
    };
    struct item list2[] = {
	{ "fish", 1321, 45, 1, base_grocery, 533 },
	{ NULL, 0, 0, 0, NULL, 0 }
    };
    struct item *ip;
    xo_info_t info[] = {
	{ "in-stock", "number", "Number of items in stock" },
	{ "name", "string", "Name of the item" },
	{ "on-order", "number", "Number of items on order" },
	{ "sku", "string", "Stock Keeping Unit" },
	{ "sold", "number", "Number of items sold" },
	{ NULL, NULL, NULL },
    };
    int info_count = (sizeof(info) / sizeof(info[0])) - 1;
    
    argc = FUNC13(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC18(argv[argc], "xml"))
	    FUNC16(NULL, XO_STYLE_XML);
	else if (FUNC18(argv[argc], "json"))
	    FUNC16(NULL, XO_STYLE_JSON);
	else if (FUNC18(argv[argc], "text"))
	    FUNC16(NULL, XO_STYLE_TEXT);
	else if (FUNC18(argv[argc], "html"))
	    FUNC16(NULL, XO_STYLE_HTML);
	else if (FUNC18(argv[argc], "pretty"))
	    FUNC14(NULL, XOF_PRETTY);
	else if (FUNC18(argv[argc], "xpath"))
	    FUNC14(NULL, XOF_XPATH);
	else if (FUNC18(argv[argc], "info"))
	    FUNC14(NULL, XOF_INFO);
        else if (FUNC18(argv[argc], "error")) {
            FUNC0(-1);
            FUNC7(1, "error detected");
        }
    }

    FUNC15(NULL, info, info_count);
    FUNC14(NULL, XOF_KEYS);

    /*  Normally one would use "XOF_COLOR_ALLOWED", but we want to force it */
    FUNC14(NULL, XOF_COLOR);

    FUNC17("3.1.4");

    FUNC10(NULL, "top");

    FUNC1("test", "value");
    FUNC9("data");
    FUNC12("item");
    FUNC1("test2", "value2");

    static const char *colors[] =
	{ "blue", "green", "red", "yellow", "default", NULL };

    int i;
    for (i = 0; colors[i]; i++) {
	if (i > 0)
	    FUNC6("{C:/bg-%s}", colors[i-1]);
	FUNC6("{C:/fg-%s}{T:/%s}", colors[i], colors[i]);
    }
    FUNC6("{C:reset}\n");

    FUNC6("{C:bold}{:data} {C:underline}{:data} {C:inverse}{:data} "
	    "{C:no-bold}{:data} {C:no-inverse}{:data} "
	    "{C:no-underline}{:data}\n",
	    "bold", "bold-ul", "triple", "inv-ul", "underline", "plain");

    FUNC6("{T:Item/%-10s}{C:bold,underline}{T:Total Sold/%12s}{C:no-bold}"
	    "{T:In Stock/%12s}{C:/%s}"
	    "{T:On Order/%12s}{C:normal}{T:SKU/%5s}\n", "inverse");

#if 0
    xo_finish();
    return 0;
#endif

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");
	FUNC1("test3", "value3");

	FUNC6("{keq:sku/%s-%u/%s-000-%u}"
		"{k:name/%-10s/%s}{n:sold/%12u/%u}"
		"{C:/%s}{:in-stock/%12u/%u}{C:normal}"
		"{C:/fg-%s}{:on-order/%12u/%u}{C:/fg-default}"
		"{qkd:sku/%5s-000-%u/%s-000-%u}\n",
		ip->i_sku_base, ip->i_sku_num,
		ip->i_title, ip->i_sold,
		(ip->i_instock < 5) ? "inverse" : "normal", ip->i_instock,
		(ip->i_onorder > 5) ? "yellow" : "default", ip->i_onorder,
		ip->i_sku_base, ip->i_sku_num);

	FUNC4("item");
    }

    FUNC5("item");
    FUNC2("data");

    FUNC6("\n\n");

    FUNC9("data");
    FUNC12("item");

    for (ip = list; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{keq:sku/%s-%u/%s-000-%u}", ip->i_sku_base, ip->i_sku_num);
	FUNC6("{L:Item} '{k:name/%s}':\n", ip->i_title);
	FUNC6("{P:   }{L:Total sold}: {n:sold/%u%s}\n",
		ip->i_sold, ip->i_sold ? ".0" : "");
	FUNC6("{P:   }{Lcw:In stock}{C:inverse}{:in-stock/%u}{C:}\n",
		ip->i_instock);
	FUNC6("{P:   }{Lcw:On order}{:on-order/%u}\n", ip->i_onorder);
	FUNC6("{P:   }{L:SKU}: {qkd:sku/%s-000-%u}\n",
		ip->i_sku_base, ip->i_sku_num);

	FUNC4("item");
    }

    FUNC5("item");
    FUNC2("data");

    FUNC9("data");
    FUNC12("item");

    for (ip = list2; ip->i_title; ip++) {
	FUNC11("item");

	FUNC6("{keq:sku/%s-%u/%s-000-%u}", ip->i_sku_base, ip->i_sku_num);
	FUNC6("{L:Item} '{k:name/%s}':\n", ip->i_title);
	FUNC6("{P:   }{C:bg-blue   , fg-white, bold   }{L:Total sold}: "
		"{n:sold/%u%s}{C:}\n",
		ip->i_sold, ip->i_sold ? ".0" : "");
	FUNC6("{P:   }{Lcw:In stock}{:in-stock/%u}\n", ip->i_instock);
	FUNC6("{P:   }{Lcw:On order}{:on-order/%u}\n", ip->i_onorder);
	FUNC6("{P:   }{L:SKU}: {qkd:sku/%s-000-%u}\n",
		ip->i_sku_base, ip->i_sku_num);

	FUNC4("item");
    }

    FUNC5("item");
    FUNC2("data");

    FUNC9("data");
    FUNC12("item");

    for (ip = list; ip->i_title; ip++) {
	FUNC1("test4", "value4");
	FUNC6("{Lwc:Item}{l:item}\n", ip->i_title);
    }

    FUNC5("item");
    FUNC2("data");

    FUNC6("X{P:}X", "epic fail");
    FUNC6("X{T:}X", "epic fail");
    FUNC6("X{N:}X", "epic fail");
    FUNC6("X{L:}X\n", "epic fail");

    FUNC6("X{P:        }X{Lwc:Cost}{:cost/%u}\n", 425);
    FUNC6("X{P:/%30s}X{Lwc:Cost}{:cost/%u}\n", "", 455);

    FUNC3(NULL, "top");

    FUNC8();

    return 0;
}