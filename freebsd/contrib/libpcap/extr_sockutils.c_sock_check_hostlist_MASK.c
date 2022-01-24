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
struct sockaddr_storage {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 char* FUNC7 (char*,char const*,char**) ; 
 scalar_t__ FUNC8 (struct sockaddr_storage*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*) ; 

int FUNC11(char *hostlist, const char *sep, struct sockaddr_storage *from, char *errbuf, int errbuflen)
{
	/* checks if the connecting host is among the ones allowed */
	if ((hostlist) && (hostlist[0]))
	{
		char *token;					/* temp, needed to separate items into the hostlist */
		struct addrinfo *addrinfo, *ai_next;
		char *temphostlist;
		char *lasts;

		/*
		 * The problem is that strtok modifies the original variable by putting '0' at the end of each token
		 * So, we have to create a new temporary string in which the original content is kept
		 */
		temphostlist = FUNC10(hostlist);
		if (temphostlist == NULL)
		{
			FUNC9("sock_check_hostlist(), malloc() failed", errbuf, errbuflen);
			return -2;
		}

		token = FUNC7(temphostlist, sep, &lasts);

		/* it avoids a warning in the compilation ('addrinfo used but not initialized') */
		addrinfo = NULL;

		while (token != NULL)
		{
			struct addrinfo hints;
			int retval;

			addrinfo = NULL;
			FUNC5(&hints, 0, sizeof(struct addrinfo));
			hints.ai_family = PF_UNSPEC;
			hints.ai_socktype = SOCK_STREAM;

			retval = FUNC4(token, "0", &hints, &addrinfo);
			if (retval != 0)
			{
				if (errbuf)
					FUNC6(errbuf, errbuflen, "getaddrinfo() %s", FUNC3(retval));

				FUNC0(errbuf);

				/* Get next token */
				token = FUNC7(NULL, sep, &lasts);
				continue;
			}

			/* ai_next is required to preserve the content of addrinfo, in order to deallocate it properly */
			ai_next = addrinfo;
			while (ai_next)
			{
				if (FUNC8(from, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
				{
					FUNC1(temphostlist);
					FUNC2(addrinfo);
					return 0;
				}

				/*
				 * If we are here, it means that the current address does not matches
				 * Let's try with the next one in the header chain
				 */
				ai_next = ai_next->ai_next;
			}

			FUNC2(addrinfo);
			addrinfo = NULL;

			/* Get next token */
			token = FUNC7(NULL, sep, &lasts);
		}

		if (addrinfo)
		{
			FUNC2(addrinfo);
			addrinfo = NULL;
		}

		if (errbuf)
			FUNC6(errbuf, errbuflen, "The host is not in the allowed host list. Connection refused.");

		FUNC1(temphostlist);
		return -1;
	}

	/* No hostlist, so we have to return 'empty list' */
	return 1;
}