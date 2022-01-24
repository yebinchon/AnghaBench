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
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  XOF_INFO ; 
 int /*<<< orphan*/  XOF_PRETTY ; 
 int /*<<< orphan*/  XOF_UNITS ; 
 int /*<<< orphan*/  XOF_XPATH ; 
 int /*<<< orphan*/  XO_STYLE_HTML ; 
 int /*<<< orphan*/  XO_STYLE_JSON ; 
 int /*<<< orphan*/  XO_STYLE_TEXT ; 
 int /*<<< orphan*/  XO_STYLE_XML ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int,char**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char*) ; 

int
FUNC17 (int argc, char **argv)
{
    argc = FUNC12(argc, argv);
    if (argc < 0)
	return 1;

    for (argc = 1; argv[argc]; argc++) {
	if (FUNC16(argv[argc], "xml"))
	    FUNC15(NULL, XO_STYLE_XML);
	else if (FUNC16(argv[argc], "json"))
	    FUNC15(NULL, XO_STYLE_JSON);
	else if (FUNC16(argv[argc], "text"))
	    FUNC15(NULL, XO_STYLE_TEXT);
	else if (FUNC16(argv[argc], "html"))
	    FUNC15(NULL, XO_STYLE_HTML);
	else if (FUNC16(argv[argc], "pretty"))
	    FUNC14(NULL, XOF_PRETTY);
	else if (FUNC16(argv[argc], "xpath"))
	    FUNC14(NULL, XOF_XPATH);
	else if (FUNC16(argv[argc], "info"))
	    FUNC14(NULL, XOF_INFO);
    }

    FUNC14(NULL, XOF_UNITS); /* Always test w/ this */
    FUNC13(stdout);

    FUNC10(NULL, "top");

    FUNC9("data");

    FUNC4("{kt:name/%-*.*s}{eq:flags/0x%x}",
	    5, 5, "em0", 34883);

    FUNC4("{d:/%-*.*s}{etk:name}{eq:flags/0x%x}",
	    5, 5, "em0", "em0", 34883);

    FUNC4("We are {{emit}}{{ting}} some {:what}\n", "braces");

    FUNC7("abcdef");
    FUNC0(-1);
    FUNC8("abcdef");

    FUNC7("improper use of profanity; %s; %s",
	       "ten yard penalty", "first down");

    FUNC4("length {:length/%6.6s}\n", "abcdefghijklmnopqrstuvwxyz");

    FUNC0(-1);
    FUNC4("close {:fd/%d} returned {:error/%m} {:test}\n", -1, "good");
    FUNC0(-1);
    FUNC4("close {:fd/%d} returned {:error/%6.6m} {:test}\n", -1, "good");


    FUNC7("improper use of profanity; %s; %s",
	       "ten yard penalty", "first down");

    FUNC4(" {:lines/%7ju} {:words/%7ju} "
            "{:characters/%7ju} {d:filename/%s}\n",
            (uintmax_t) 20, (uintmax_t) 30, (uintmax_t) 40, "file");

    int i;
    for (i = 0; i < 5; i++)
	FUNC4("{lw:bytes/%d}{Np:byte,bytes}\n", i);


    FUNC4("{:mbuf-current/%u}/{:mbuf-cache/%u}/{:mbuf-total/%u} "
	    "{N:mbufs <&> in use (current\\/cache\\/total)}\n",
	    10, 20, 30);

    FUNC4("{:distance/%u}{Uw:miles} from {:location}\n", 50, "Boston");
    FUNC4("{:memory/%u}{U:k} left out of {:total/%u}{U:kb}\n", 64, 640);
    FUNC4("{:memory/%u}{U:/%s} left out of {:total/%u}{U:/%s}\n",
	    64, "k", 640, "kilobytes");

    FUNC4("{,title:/before%safter:}\n", "working");

    FUNC4("{,display,white,colon:some/%s}"
	    "{,value:ten/%ju}{,value:eleven/%ju}\n",
	    "string", (uintmax_t) 10, (uintmax_t) 11);

    FUNC4("{:unknown/%u} "
	    "{N:/packet%s here\\/there\\/everywhere}\n",
	    1010, "s");

    FUNC4("{:unknown/%u} "
	    "{,note:/packet%s here\\/there\\/everywhere}\n",
	    1010, "s");

    FUNC4("({[:/%d}{n:min/15}/{n:cur/20}/{:max/%d}{]:})\n", 30, 125);
    FUNC4("({[:30}{:min/%u}/{:cur/%u}/{:max/%u}{]:})\n", 15, 20, 125);
    FUNC4("({[:-30}{n:min/15}/{n:cur/20}/{n:max/125}{]:})\n");
    FUNC4("({[:}{:min/%u}/{:cur/%u}/{:max/%u}{]:/%d})\n", 15, 20, 125, -30);

    FUNC4("Humanize: {h:val1/%u}, {h,hn-space:val2/%u}, "
	    "{h,hn-decimal:val3/%u}, {h,hn-1000:val4/%u}, "
	    "{h,hn-decimal:val5/%u}\n",
            21,
	    57 * 1024,
	    96 * 1024 * 1024,
	    (42 * 1024 + 420) * 1024,
	    1342172800);

    FUNC11("flag");
    FUNC4("{lq:flag/one} {lq:flag/two} {lq:flag/three}\n");
    FUNC3("flag");

    FUNC4("{n:works/%s}\n", NULL);

    FUNC4("{e:empty-tag/}");
    FUNC4("1:{qt:t1/%*d} 2:{qt:t2/test%-*u} "
	    "3:{qt:t3/%10sx} 4:{qt:t4/x%-*.*s}\n",
	    6, 1000, 8, 5000, "ten-long", 10, 10, "test");
    FUNC4("{E:this is an error}\n");
    FUNC4("{E:/%s more error%s}\n", "two", "s" );
    FUNC4("{W:this is an warning}\n");
    FUNC4("{W:/%s more warning%s}\n", "two", "s" );
    FUNC4("{L:/V1\\/V2 packet%s}: {:count/%u}\n", "s", 10);

    int test = 4;
    FUNC4("{:test/%04d} {L:/tr%s}\n", test, (test == 1) ? "y" : "ies");

    FUNC7("improper use of profanity; %s; %s",
	       "ten yard penalty", "first down");

    FUNC5("Shut 'er down, Clancey!  She's a-pumpin' mud!  <>!,\"!<>\n");

    FUNC1("data");

    FUNC2(NULL, "top");

    FUNC6();

    return 0;
}