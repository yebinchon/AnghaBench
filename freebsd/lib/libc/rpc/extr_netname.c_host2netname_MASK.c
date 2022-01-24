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
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 scalar_t__ MAXNETNAMELEN ; 
 char* OPSYS ; 
 scalar_t__ FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

int
FUNC4(char netname[MAXNETNAMELEN + 1], const char *host, const char *domain)
{
	char *dfltdom;
	char hostname[MAXHOSTNAMELEN+1];

	if (domain == NULL) {
		if (FUNC0(&dfltdom) != 0) {
			return (0);
		}
		domain = dfltdom;
	}
	if (host == NULL) {
		(void) FUNC1(hostname, sizeof(hostname));
		host = hostname;
	}
	if (FUNC3(domain) + 1 + FUNC3(host) + 1 + FUNC3(OPSYS) > MAXNETNAMELEN) {
		return (0);
	} 
	(void) FUNC2(netname, "%s.%s@%s", OPSYS, host, domain);
	return (1);
}