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
typedef  int /*<<< orphan*/  time_t ;
struct utsname {char* nodename; } ;
struct gctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  GV_CFG_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*) ; 
 struct gctl_req* FUNC3 () ; 
 char* FUNC4 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct utsname*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static void
FUNC10(FILE *of, const char *comment)
{
	struct gctl_req *req;
	struct utsname uname_s;
	const char *errstr;
	time_t now;
	char buf[GV_CFG_LEN + 1];
	
	FUNC8(&uname_s);
	FUNC7(&now);

	req = FUNC3();
	FUNC5(req, "class", -1, "VINUM");
	FUNC5(req, "verb", -1, "getconfig");
	FUNC5(req, "comment", -1, comment);
	FUNC6(req, "config", sizeof(buf), buf);
	errstr = FUNC4(req);
	if (errstr != NULL) {
		FUNC9("can't get configuration: %s", errstr);
		return;
	}
	FUNC2(req);

	FUNC1(of, "# Vinum configuration of %s, saved at %s",
	    uname_s.nodename,
	    FUNC0(&now));
	
	if (*comment != '\0')
	    FUNC1(of, "# Current configuration:\n");

	FUNC1(of, "%s", buf);
}