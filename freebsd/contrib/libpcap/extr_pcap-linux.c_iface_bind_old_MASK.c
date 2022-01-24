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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC5(int fd, const char *device, char *ebuf)
{
	struct sockaddr	saddr;
	int		err;
	socklen_t	errlen = sizeof(err);

	FUNC2(&saddr, 0, sizeof(saddr));
	FUNC4(saddr.sa_data, device, sizeof(saddr.sa_data));
	if (FUNC0(fd, &saddr, sizeof(saddr)) == -1) {
		FUNC3(ebuf, PCAP_ERRBUF_SIZE,
		    errno, "bind");
		return -1;
	}

	/* Any pending errors, e.g., network is down? */

	if (FUNC1(fd, SOL_SOCKET, SO_ERROR, &err, &errlen) == -1) {
		FUNC3(ebuf, PCAP_ERRBUF_SIZE,
		    errno, "getsockopt");
		return -1;
	}

	if (err > 0) {
		FUNC3(ebuf, PCAP_ERRBUF_SIZE,
		    err, "bind");
		return -1;
	}

	return 0;
}