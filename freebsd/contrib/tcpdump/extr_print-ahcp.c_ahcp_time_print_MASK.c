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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 struct tm* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  istr ; 
 scalar_t__ FUNC4 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC5(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
	time_t t;
	struct tm *tm;
	char buf[BUFSIZE];

	if (cp + 4 != ep)
		goto invalid;
	FUNC2(*cp, 4);
	t = FUNC0(cp);
	if (NULL == (tm = FUNC3(&t)))
		FUNC1((ndo, ": gmtime() error"));
	else if (0 == FUNC4(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", tm))
		FUNC1((ndo, ": strftime() error"));
	else
		FUNC1((ndo, ": %s UTC", buf));
	return 0;

invalid:
	FUNC1((ndo, "%s", istr));
	FUNC2(*cp, ep - cp);
	return 0;
trunc:
	FUNC1((ndo, "%s", tstr));
	return -1;
}