#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char u_int8_t ;
typedef  int /*<<< orphan*/  tbuf ;
struct interface_info {TYPE_4__* client; } ;
struct iaddr {char* iabuf; size_t len; } ;
struct client_lease {char* filename; char* server_name; scalar_t__ expiry; TYPE_2__* options; struct iaddr address; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  dbuf ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__* config; } ;
struct TYPE_9__ {char* data; size_t len; } ;
struct TYPE_8__ {char* data; size_t len; } ;
struct TYPE_7__ {int* default_actions; TYPE_3__* defaults; } ;

/* Variables and functions */
#define  ACTION_APPEND 131 
#define  ACTION_DEFAULT 130 
#define  ACTION_PREPEND 129 
#define  ACTION_SUPERSEDE 128 
 size_t DHO_BROADCAST_ADDRESS ; 
 size_t DHO_SUBNET_MASK ; 
 struct iaddr FUNC0 (struct iaddr,struct iaddr) ; 
 scalar_t__ FUNC1 (char*,int,TYPE_5__*) ; 
 TYPE_5__* dhcp_options ; 
 struct interface_info* ifi ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 char* FUNC3 (struct iaddr) ; 
 char* FUNC4 (int,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 struct iaddr FUNC7 (struct iaddr,struct iaddr) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC9(const char *prefix, struct client_lease *lease)
{
	struct interface_info *ip = ifi;
	u_int8_t dbuf[1500], *dp = NULL;
	int i;
	size_t len;
	char tbuf[128];

	FUNC5(ip->client, prefix, "ip_address",
	    FUNC3(lease->address));

	if (ip->client->config->default_actions[DHO_SUBNET_MASK] ==
	    ACTION_SUPERSEDE) {
		dp = ip->client->config->defaults[DHO_SUBNET_MASK].data;
		len = ip->client->config->defaults[DHO_SUBNET_MASK].len;
	} else {
		dp = lease->options[DHO_SUBNET_MASK].data;
		len = lease->options[DHO_SUBNET_MASK].len;
	}
	if (len && (len < sizeof(lease->address.iabuf))) {
		struct iaddr netmask, subnet, broadcast;

		FUNC2(netmask.iabuf, dp, len);
		netmask.len = len;
		subnet = FUNC7(lease->address, netmask);
		if (subnet.len) {
			FUNC5(ip->client, prefix, "network_number",
			    FUNC3(subnet));
			if (!lease->options[DHO_BROADCAST_ADDRESS].len) {
				broadcast = FUNC0(subnet, netmask);
				if (broadcast.len)
					FUNC5(ip->client, prefix,
					    "broadcast_address",
					    FUNC3(broadcast));
			}
		}
	}

	if (lease->filename)
		FUNC5(ip->client, prefix, "filename", lease->filename);
	if (lease->server_name)
		FUNC5(ip->client, prefix, "server_name",
		    lease->server_name);
	for (i = 0; i < 256; i++) {
		len = 0;

		if (ip->client->config->defaults[i].len) {
			if (lease->options[i].len) {
				switch (
				    ip->client->config->default_actions[i]) {
				case ACTION_DEFAULT:
					dp = lease->options[i].data;
					len = lease->options[i].len;
					break;
				case ACTION_SUPERSEDE:
supersede:
					dp = ip->client->
						config->defaults[i].data;
					len = ip->client->
						config->defaults[i].len;
					break;
				case ACTION_PREPEND:
					len = ip->client->
					    config->defaults[i].len +
					    lease->options[i].len;
					if (len >= sizeof(dbuf)) {
						FUNC8("no space to %s %s",
						    "prepend option",
						    dhcp_options[i].name);
						goto supersede;
					}
					dp = dbuf;
					FUNC2(dp,
						ip->client->
						config->defaults[i].data,
						ip->client->
						config->defaults[i].len);
					FUNC2(dp + ip->client->
						config->defaults[i].len,
						lease->options[i].data,
						lease->options[i].len);
					dp[len] = '\0';
					break;
				case ACTION_APPEND:
					/*
					 * When we append, we assume that we're
					 * appending to text.  Some MS servers
					 * include a NUL byte at the end of
					 * the search string provided.
					 */
					len = ip->client->
					    config->defaults[i].len +
					    lease->options[i].len;
					if (len >= sizeof(dbuf)) {
						FUNC8("no space to %s %s",
						    "append option",
						    dhcp_options[i].name);
						goto supersede;
					}
					FUNC2(dbuf,
						lease->options[i].data,
						lease->options[i].len);
					for (dp = dbuf + lease->options[i].len;
					    dp > dbuf; dp--, len--)
						if (dp[-1] != '\0')
							break;
					FUNC2(dp,
						ip->client->
						config->defaults[i].data,
						ip->client->
						config->defaults[i].len);
					dp = dbuf;
					dp[len] = '\0';
				}
			} else {
				dp = ip->client->
					config->defaults[i].data;
				len = ip->client->
					config->defaults[i].len;
			}
		} else if (lease->options[i].len) {
			len = lease->options[i].len;
			dp = lease->options[i].data;
		} else {
			len = 0;
		}
		if (len) {
			char name[256];

			if (FUNC1(name, sizeof(name),
			    &dhcp_options[i]))
				FUNC5(ip->client, prefix, name,
				    FUNC4(i, dp, len, 0, 0));
		}
	}
	FUNC6(tbuf, sizeof(tbuf), "%d", (int)lease->expiry);
	FUNC5(ip->client, prefix, "expiry", tbuf);
}