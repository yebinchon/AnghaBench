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
struct sockaddr {scalar_t__ sa_family; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_UNSPEC ; 
 int EAI_FAMILY ; 
 int EAI_MEMORY ; 
 int EAI_NODATA ; 
 int NI_NUMERICHOST ; 
 struct hostent* FUNC0 (char*,int,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 size_t FUNC4 (char*,char*,size_t) ; 

int FUNC5(const struct sockaddr *sa, size_t salen, char *host,
		size_t hostlen, char *serv, size_t servlen, int flags)
{
	struct sockaddr_in *sin = (struct sockaddr_in *)sa;
	struct hostent *hp;
	char tmpserv[16];

	if (sa->sa_family != AF_UNSPEC && sa->sa_family != AF_INET)
		return (EAI_FAMILY);
	if (serv != NULL) {
		FUNC3(tmpserv, sizeof(tmpserv), "%d", FUNC2(sin->sin_port));
		if (FUNC4(serv, tmpserv, servlen) >= servlen)
			return (EAI_MEMORY);
	}

	if (host != NULL) {
		if (flags & NI_NUMERICHOST) {
			if (FUNC4(host, FUNC1(sin->sin_addr),
			    hostlen) >= hostlen)
				return (EAI_MEMORY);
			else
				return (0);
		} else {
			hp = FUNC0((char *)&sin->sin_addr,
			    sizeof(struct in_addr), AF_INET);
			if (hp == NULL)
				return (EAI_NODATA);

			if (FUNC4(host, hp->h_name, hostlen) >= hostlen)
				return (EAI_MEMORY);
			else
				return (0);
		}
	}
	return (0);
}