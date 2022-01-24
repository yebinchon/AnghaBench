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
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int FUNC1 (struct sockaddr_storage*,char*,int,char*,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3(SOCKET sock, char *address, int addrlen, char *port, int portlen, int flags, char *errbuf, int errbuflen)
{
	struct sockaddr_storage mysockaddr;
	socklen_t sockaddrlen;


	sockaddrlen = sizeof(struct sockaddr_storage);

	if (FUNC0(sock, (struct sockaddr *) &mysockaddr, &sockaddrlen) == -1)
	{
		FUNC2("getsockname(): ", errbuf, errbuflen);
		return 0;
	}

	/* Returns the numeric address of the host that triggered the error */
	return FUNC1(&mysockaddr, address, addrlen, port, portlen, flags, errbuf, errbuflen);
}