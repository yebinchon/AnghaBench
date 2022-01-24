#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
struct ssh {int dummy; } ;
struct sockaddr_storage {int dummy; } ;
struct addrinfo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * proxy_command; scalar_t__ proxy_use_fdpass; } ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 TYPE_1__ options ; 
 int FUNC0 (struct ssh*,char const*,struct addrinfo*,struct sockaddr_storage*,int /*<<< orphan*/ ,int,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct ssh*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ssh*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ssh*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 

int
FUNC5(struct ssh *ssh, const char *host, struct addrinfo *addrs,
    struct sockaddr_storage *hostaddr, u_short port, int family,
    int connection_attempts, int *timeout_ms, int want_keepalive)
{
	if (options.proxy_command == NULL) {
		return FUNC0(ssh, host, addrs, hostaddr, port,
		    family, connection_attempts, timeout_ms, want_keepalive);
	} else if (FUNC4(options.proxy_command, "-") == 0) {
		if ((FUNC1(ssh,
		    STDIN_FILENO, STDOUT_FILENO)) == NULL)
			return -1; /* ssh_packet_set_connection logs error */
		return 0;
	} else if (options.proxy_use_fdpass) {
		return FUNC3(ssh, host, port,
		    options.proxy_command);
	}
	return FUNC2(ssh, host, port, options.proxy_command);
}