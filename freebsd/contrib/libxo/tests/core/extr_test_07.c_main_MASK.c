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
 int /*<<< orphan*/  XOF_COLUMNS ; 
 int /*<<< orphan*/  info ; 
 int /*<<< orphan*/  info_count ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12 (int argc, char **argv)
{
    struct employee {
	const char *e_first;
	const char *e_nic;
	const char *e_last;
	unsigned e_dept;
	unsigned e_percent;
    } employees[] = {
	{ "Jim", "რეგტ", "გთხოვთ ახ", 431, 90 },
	{ "Terry", "<one", "Οὐχὶ ταὐτὰ παρίσταταί μοι Jones", 660, 90 },
	{ "Leslie", "Les", "Patterson", 341,60 },
	{ "Ashley", "Ash", "Meter & Smith", 1440, 40 },
	{ "0123456789", "0123456789", "012345678901234567890", 1440, 40 },
	{ "ახლა", "გაიარო", "საერთაშორისო", 123, 90 },
	{ NULL, NULL }
    }, *ep = employees;
    int rc;

    argc = FUNC9(argc, argv);
    if (argc < 0)
	return 1;

    FUNC11(NULL, info, info_count);
    FUNC10(NULL, XOF_COLUMNS);

    FUNC6("employees");

    FUNC8("test");
    FUNC7("test");
    FUNC4("{ek:filename/%s}", NULL);
    FUNC2("test");
    FUNC3("test");

    rc = FUNC4("Οὐχὶ ταὐτὰ παρίσταταί μοι {:v1/%s}, {:v2/%s}\n",
	    "γιγνώσκειν", "ὦ ἄνδρες ᾿Αθηναῖοι");
    rc = FUNC4("{:columns/%d}\n", rc);
    FUNC4("{:columns/%d}\n", rc);

    rc = FUNC4("გთხოვთ {:v1/%s} {:v2/%s}\n",
	    "ახლავე გაიაროთ რეგისტრაცია",
	    "Unicode-ის მეათე საერთაშორისო");
    FUNC4("{:columns/%d}\n", rc);


    rc = FUNC4("{T:First Name/%-25s}{T:Last Name/%-14s}"
	    "{T:/%-12s}{T:Time (%)}\n", "Department");
    FUNC4("{:columns/%d}\n", rc);

    FUNC8("employee");
    for ( ; ep->e_first; ep++) {
	FUNC7("employee");
	rc = FUNC4("{[:-25}{:first-name/%s} ({:nic-name/\"%s\"}){]:}"
		"{:last-name/%-14..14s/%s}"
		"{:department/%8u/%u}{:percent-time/%8u/%u}\n",
		ep->e_first, ep->e_nic, ep->e_last, ep->e_dept, ep->e_percent);
	FUNC4("{:columns/%d}\n", rc);
	if (ep->e_percent > 50) {
	    FUNC0("full-time", "%s", "honest & for true");
	    FUNC4("{e:benefits/%s}", "full");
	}
	FUNC2("employee");
    }

    FUNC3("employee");
    FUNC1("employees");

    FUNC5();

    return 0;
}