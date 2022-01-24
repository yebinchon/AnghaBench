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
typedef  int /*<<< orphan*/  tmpserv ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 struct hostent* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC5(const struct sockaddr *sa, size_t salen, char *host,
	size_t hostlen, char *serv, size_t servlen, int flags)
{
	struct sockaddr_in *sin = (struct sockaddr_in *)sa;

	if (serv != NULL) {
		char tmpserv[16];
		FUNC0(tmpserv, sizeof(tmpserv),
		    "%d", FUNC3(sin->sin_port));
		if (FUNC4(serv, tmpserv, servlen) >= servlen)
			return (-1);
	}

	if (host != NULL) {
		if (flags & NI_NUMERICHOST) {
			if (FUNC4(host, FUNC2(sin->sin_addr),
			    hostlen) >= hostlen)
				return (-1);
			else
				return (0);
		} else {
			struct hostent *hp;
			hp = FUNC1((char *)&sin->sin_addr,
			    sizeof(struct in_addr), AF_INET);
			if (hp == NULL)
				return (-2);

			if (FUNC4(host, hp->h_name, hostlen) >= hostlen)
				return (-1);
			else
				return (0);
		}
	}
	return (0);
}