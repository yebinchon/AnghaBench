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
struct connection_info {char* user; char* host; char* address; char* laddress; int lport; char* rdomain; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (char*,int,char*) ; 
 int FUNC6 (char*,char*) ; 
 int FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char**) ; 

__attribute__((used)) static int
FUNC11(char **condition, int line, struct connection_info *ci)
{
	int result = 1, attributes = 0, port;
	char *arg, *attrib, *cp = *condition;

	if (ci == NULL)
		FUNC3("checking syntax for 'Match %s'", cp);
	else
		FUNC3("checking match for '%s' user %s host %s addr %s "
		    "laddr %s lport %d", cp, ci->user ? ci->user : "(null)",
		    ci->host ? ci->host : "(null)",
		    ci->address ? ci->address : "(null)",
		    ci->laddress ? ci->laddress : "(null)", ci->lport);

	while ((attrib = FUNC10(&cp)) && *attrib != '\0') {
		attributes++;
		if (FUNC9(attrib, "all") == 0) {
			if (attributes != 1 ||
			    ((arg = FUNC10(&cp)) != NULL && *arg != '\0')) {
				FUNC4("'all' cannot be combined with other "
				    "Match attributes");
				return -1;
			}
			*condition = cp;
			return 1;
		}
		if ((arg = FUNC10(&cp)) == NULL || *arg == '\0') {
			FUNC4("Missing Match criteria for %s", attrib);
			return -1;
		}
		if (FUNC9(attrib, "user") == 0) {
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->user == NULL)
				FUNC8("User", "user");
			if (FUNC7(ci->user, arg, 0) != 1)
				result = 0;
			else
				FUNC2("user %.100s matched 'User %.100s' at "
				    "line %d", ci->user, arg, line);
		} else if (FUNC9(attrib, "group") == 0) {
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->user == NULL)
				FUNC8("Group", "user");
			switch (FUNC5(arg, line, ci->user)) {
			case -1:
				return -1;
			case 0:
				result = 0;
			}
		} else if (FUNC9(attrib, "host") == 0) {
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->host == NULL)
				FUNC8("Host", "host");
			if (FUNC6(ci->host, arg) != 1)
				result = 0;
			else
				FUNC2("connection from %.100s matched 'Host "
				    "%.100s' at line %d", ci->host, arg, line);
		} else if (FUNC9(attrib, "address") == 0) {
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->address == NULL)
				FUNC8("Address", "addr");
			switch (FUNC1(ci->address, arg)) {
			case 1:
				FUNC2("connection from %.100s matched 'Address "
				    "%.100s' at line %d", ci->address, arg, line);
				break;
			case 0:
			case -1:
				result = 0;
				break;
			case -2:
				return -1;
			}
		} else if (FUNC9(attrib, "localaddress") == 0){
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->laddress == NULL)
				FUNC8("LocalAddress",
				    "laddr");
			switch (FUNC1(ci->laddress, arg)) {
			case 1:
				FUNC2("connection from %.100s matched "
				    "'LocalAddress %.100s' at line %d",
				    ci->laddress, arg, line);
				break;
			case 0:
			case -1:
				result = 0;
				break;
			case -2:
				return -1;
			}
		} else if (FUNC9(attrib, "localport") == 0) {
			if ((port = FUNC0(arg)) == -1) {
				FUNC4("Invalid LocalPort '%s' on Match line",
				    arg);
				return -1;
			}
			if (ci == NULL) {
				result = 0;
				continue;
			}
			if (ci->lport == 0)
				FUNC8("LocalPort", "lport");
			/* TODO support port lists */
			if (port == ci->lport)
				FUNC2("connection from %.100s matched "
				    "'LocalPort %d' at line %d",
				    ci->laddress, port, line);
			else
				result = 0;
		} else if (FUNC9(attrib, "rdomain") == 0) {
			if (ci == NULL || ci->rdomain == NULL) {
				result = 0;
				continue;
			}
			if (FUNC7(ci->rdomain, arg, 0) != 1)
				result = 0;
			else
				FUNC2("user %.100s matched 'RDomain %.100s' at "
				    "line %d", ci->rdomain, arg, line);
		} else {
			FUNC4("Unsupported Match attribute %s", attrib);
			return -1;
		}
	}
	if (attributes == 0) {
		FUNC4("One or more attributes required for Match");
		return -1;
	}
	if (ci != NULL)
		FUNC3("match %sfound", result ? "" : "not ");
	*condition = cp;
	return result;
}