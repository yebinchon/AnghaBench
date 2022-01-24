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
struct servent {int /*<<< orphan*/  s_name; } ;
struct hostent {int dummy; } ;

/* Variables and functions */
 int EAI_NONAME ; 
 int EAI_SYSTEM ; 
 int NI_DGRAM ; 
 int NI_NAMEREQD ; 
 int NI_NOFQDN ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 struct hostent* FUNC0 (void const*,size_t,int) ; 
 struct servent* FUNC1 (int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostent*) ; 
 int /*<<< orphan*/ * FUNC3 (int,void const*,char*,size_t) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC8 (int af,
      const void *addr,
      size_t addrlen,
      int port,
      char *host, size_t hostlen,
      char *serv, size_t servlen,
      int flags)
{
    if (host != NULL) {
	if (flags & NI_NUMERICHOST) {
	    if (FUNC3 (af, addr, host, hostlen) == NULL)
		return EAI_SYSTEM;
	} else {
	    struct hostent *he = FUNC0 (addr,
						addrlen,
						af);
	    if (he != NULL) {
		FUNC7 (host, FUNC2(he), hostlen);
		if (flags & NI_NOFQDN) {
		    char *dot = FUNC6 (host, '.');
		    if (dot != NULL)
			*dot = '\0';
		}
	    } else if (flags & NI_NAMEREQD) {
		return EAI_NONAME;
	    } else if (FUNC3 (af, addr, host, hostlen) == NULL)
		return EAI_SYSTEM;
	}
    }

    if (serv != NULL) {
	if (flags & NI_NUMERICSERV) {
	    FUNC5 (serv, servlen, "%u", FUNC4(port));
	} else {
	    const char *proto = "tcp";
	    struct servent *se;

	    if (flags & NI_DGRAM)
		proto = "udp";

	    se = FUNC1 (port, proto);
	    if (se == NULL) {
		FUNC5 (serv, servlen, "%u", FUNC4(port));
	    } else {
		FUNC7 (serv, se->s_name, servlen);
	    }
	}
    }
    return 0;
}