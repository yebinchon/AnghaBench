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
struct activehosts {struct activehosts* next; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 struct activehosts* activeHosts ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,struct sockaddr_storage*) ; 

__attribute__((used)) static struct activehosts *
FUNC6(const char *host, int *error, char *errbuf)
{
	struct activehosts *temp;			/* temp var needed to scan the host list chain */
	struct addrinfo hints, *addrinfo, *ai_next;	/* temp var needed to translate between hostname to its address */
	int retval;

	/* retrieve the network address corresponding to 'host' */
	addrinfo = NULL;
	FUNC3(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	retval = FUNC2(host, "0", &hints, &addrinfo);
	if (retval != 0)
	{
		FUNC4(errbuf, PCAP_ERRBUF_SIZE, "getaddrinfo() %s",
		    FUNC1(retval));
		*error = 1;
		return NULL;
	}

	temp = activeHosts;

	while (temp)
	{
		ai_next = addrinfo;
		while (ai_next)
		{
			if (FUNC5(&temp->host, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
			{
				*error = 0;
				FUNC0(addrinfo);
				return temp;
			}

			ai_next = ai_next->ai_next;
		}
		temp = temp->next;
	}

	if (addrinfo)
		FUNC0(addrinfo);

	/*
	 * The host for which you want to get the socket ID does not have an
	 * active connection.
	 */
	*error = 0;
	return NULL;
}