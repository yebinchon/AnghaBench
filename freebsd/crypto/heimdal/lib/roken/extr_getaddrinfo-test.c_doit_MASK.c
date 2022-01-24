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
struct addrinfo {int ai_family; int ai_socktype; int ai_protocol; char* ai_canonname; int /*<<< orphan*/  ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  addrstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int family ; 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int socktype ; 
 scalar_t__ verbose_counter ; 

__attribute__((used)) static void
FUNC10 (const char *nodename, const char *servname)
{
    struct addrinfo hints;
    struct addrinfo *res, *r;
    int ret;

    if (verbose_counter)
	FUNC7 ("(%s,%s)... ", nodename ? nodename : "null", servname);

    FUNC5 (&hints, 0, sizeof(hints));
    hints.ai_flags    = flags;
    hints.ai_family   = family;
    hints.ai_socktype = socktype;

    ret = FUNC3 (nodename, servname, &hints, &res);
    if (ret)
	FUNC0(1, "error: %s\n", FUNC2(ret));

    if (verbose_counter)
	FUNC7 ("\n");

    for (r = res; r != NULL; r = r->ai_next) {
	char addrstr[256];

	if (FUNC4 (r->ai_family,
		       FUNC8 (r->ai_addr),
		       addrstr, sizeof(addrstr)) == NULL) {
	    if (verbose_counter)
		FUNC7 ("\tbad address?\n");
	    continue;
	}
	if (verbose_counter) {
	    FUNC7 ("\tfamily = %d, socktype = %d, protocol = %d, "
		    "address = \"%s\", port = %d",
		    r->ai_family, r->ai_socktype, r->ai_protocol,
		    addrstr,
		    FUNC6(FUNC9 (r->ai_addr)));
	    if (r->ai_canonname)
		FUNC7 (", canonname = \"%s\"", r->ai_canonname);
	    FUNC7 ("\n");
	}
    }
    FUNC1 (res);
}