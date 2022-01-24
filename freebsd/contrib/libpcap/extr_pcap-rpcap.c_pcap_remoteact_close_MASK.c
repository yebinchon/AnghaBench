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
struct rpcap_header {int dummy; } ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct activehosts {struct activehosts* next; int /*<<< orphan*/  sockctrl; int /*<<< orphan*/  protocol_version; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  RPCAP_MSG_CLOSE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 struct activehosts* activeHosts ; 
 int /*<<< orphan*/  FUNC0 (struct activehosts*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct rpcap_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,struct sockaddr_storage*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ) ; 

int FUNC11(const char *host, char *errbuf)
{
	struct activehosts *temp, *prev;	/* temp var needed to scan the host list chain */
	struct addrinfo hints, *addrinfo, *ai_next;	/* temp var needed to translate between hostname to its address */
	int retval;

	temp = activeHosts;
	prev = NULL;

	/* retrieve the network address corresponding to 'host' */
	addrinfo = NULL;
	FUNC4(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	retval = FUNC3(host, "0", &hints, &addrinfo);
	if (retval != 0)
	{
		FUNC5(errbuf, PCAP_ERRBUF_SIZE, "getaddrinfo() %s", FUNC2(retval));
		return -1;
	}

	while (temp)
	{
		ai_next = addrinfo;
		while (ai_next)
		{
			if (FUNC9(&temp->host, (struct sockaddr_storage *) ai_next->ai_addr) == 0)
			{
				struct rpcap_header header;
				int status = 0;

				/* Close this connection */
				FUNC6(&header, temp->protocol_version,
				    RPCAP_MSG_CLOSE, 0, 0);

				/*
				 * Don't check for errors, since we're
				 * just cleaning up.
				 */
				if (FUNC10(temp->sockctrl,
				    (char *)&header,
				    sizeof(struct rpcap_header), errbuf,
				    PCAP_ERRBUF_SIZE) < 0)
				{
					/*
					 * Let that error be the one we
					 * report.
					 */
					(void)FUNC8(temp->sockctrl, NULL,
					   0);
					status = -1;
				}
				else
				{
					if (FUNC8(temp->sockctrl, errbuf,
					   PCAP_ERRBUF_SIZE) == -1)
						status = -1;
				}

				/*
				 * Remove the host from the list of active
				 * hosts.
				 */
				if (prev)
					prev->next = temp->next;
				else
					activeHosts = temp->next;

				FUNC1(addrinfo);

				FUNC0(temp);

				/* To avoid inconsistencies in the number of sock_init() */
				FUNC7();

				return status;
			}

			ai_next = ai_next->ai_next;
		}
		prev = temp;
		temp = temp->next;
	}

	if (addrinfo)
		FUNC1(addrinfo);

	/* To avoid inconsistencies in the number of sock_init() */
	FUNC7();

	FUNC5(errbuf, PCAP_ERRBUF_SIZE, "The host you want to close the active connection is not known");
	return -1;
}