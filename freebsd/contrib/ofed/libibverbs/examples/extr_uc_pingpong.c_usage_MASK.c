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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const char *argv0)
{
	FUNC0("Usage:\n");
	FUNC0("  %s            start a server and wait for connection\n", argv0);
	FUNC0("  %s <host>     connect to server at <host>\n", argv0);
	FUNC0("\n");
	FUNC0("Options:\n");
	FUNC0("  -p, --port=<port>      listen on/connect to port <port> (default 18515)\n");
	FUNC0("  -d, --ib-dev=<dev>     use IB device <dev> (default first device found)\n");
	FUNC0("  -i, --ib-port=<port>   use port <port> of IB device (default 1)\n");
	FUNC0("  -s, --size=<size>      size of message to exchange (default 4096)\n");
	FUNC0("  -m, --mtu=<size>       path MTU (default 1024)\n");
	FUNC0("  -r, --rx-depth=<dep>   number of receives to post at a time (default 500)\n");
	FUNC0("  -n, --iters=<iters>    number of exchanges (default 1000)\n");
	FUNC0("  -l, --sl=<sl>          service level value\n");
	FUNC0("  -e, --events           sleep on CQ events (default poll)\n");
	FUNC0("  -g, --gid-idx=<gid index> local port gid index\n");
}