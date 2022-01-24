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
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int NI_NUMERICHOST ; 
 int /*<<< orphan*/  SOCKET_NAME_NULL_DAD ; 
 int /*<<< orphan*/  SOCKET_NO_NAME_AVAILABLE ; 
 int /*<<< orphan*/  SOCKET_NO_PORT_AVAILABLE ; 
 scalar_t__ FUNC0 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

int FUNC4(const struct sockaddr_storage *sockaddr, char *address, int addrlen, char *port, int portlen, int flags, char *errbuf, int errbuflen)
{
	socklen_t sockaddrlen;
	int retval;					/* Variable that keeps the return value; */

	retval = -1;

#ifdef _WIN32
	if (sockaddr->ss_family == AF_INET)
		sockaddrlen = sizeof(struct sockaddr_in);
	else
		sockaddrlen = sizeof(struct sockaddr_in6);
#else
	sockaddrlen = sizeof(struct sockaddr_storage);
#endif

	if ((flags & NI_NUMERICHOST) == 0)	/* Check that we want literal names */
	{
		if ((sockaddr->ss_family == AF_INET6) &&
			(FUNC1(&((struct sockaddr_in6 *) sockaddr)->sin6_addr, "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", sizeof(struct in6_addr)) == 0))
		{
			if (address)
				FUNC3(address, SOCKET_NAME_NULL_DAD, addrlen);
			return retval;
		}
	}

	if (FUNC0((struct sockaddr *) sockaddr, sockaddrlen, address, addrlen, port, portlen, flags) != 0)
	{
		/* If the user wants to receive an error message */
		if (errbuf)
		{
			FUNC2("getnameinfo(): ", errbuf, errbuflen);
			errbuf[errbuflen - 1] = 0;
		}

		if (address)
		{
			FUNC3(address, SOCKET_NO_NAME_AVAILABLE, addrlen);
			address[addrlen - 1] = 0;
		}

		if (port)
		{
			FUNC3(port, SOCKET_NO_PORT_AVAILABLE, portlen);
			port[portlen - 1] = 0;
		}

		retval = 0;
	}

	return retval;
}