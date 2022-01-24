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
typedef  int /*<<< orphan*/  trimmed ;
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/ ** h_addr_list; int /*<<< orphan*/  h_name; } ;
typedef  int /*<<< orphan*/  lookup ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int HOSTNAME_FOUND ; 
 int HOSTNAME_INCORRECTNAME ; 
 int HOSTNAME_INVALIDADDR ; 
 int HOSTNAME_INVALIDNAME ; 
 int MAXHOSTNAMELEN ; 
 struct hostent* FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char*) ; 
 char* FUNC2 (struct in_addr const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct in_addr const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 

int
FUNC8(char *host, size_t hsize, const struct in_addr *ip)
{
	char trimmed[MAXHOSTNAMELEN];
	int result;
	struct hostent *hp;

	result = HOSTNAME_INVALIDADDR;
	hp = FUNC0((const char *)ip, sizeof(*ip), AF_INET);

	if (hp != NULL) {
		FUNC4(trimmed, hp->h_name, sizeof(trimmed));
		FUNC7(trimmed, FUNC5(trimmed));
		if (FUNC5(trimmed) <= hsize) {
			char lookup[MAXHOSTNAMELEN];

			FUNC4(lookup, hp->h_name, sizeof(lookup));
			hp = FUNC1(lookup);
			if (hp == NULL)
				result = HOSTNAME_INVALIDNAME;
			else for (; ; hp->h_addr_list++) {
				if (*hp->h_addr_list == NULL) {
					result = HOSTNAME_INCORRECTNAME;
					break;
				}
				if (!FUNC3(*hp->h_addr_list, ip, sizeof(*ip))) {
					FUNC6(host, trimmed, hsize);
					return HOSTNAME_FOUND;
				}
			}
		}
	}

	FUNC6(host, FUNC2(*ip), hsize);

	return result;
}