#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct packet {TYPE_5__* raw; TYPE_4__* options; } ;
struct TYPE_8__ {int len; char* iabuf; } ;
struct TYPE_7__ {int len; char* iabuf; } ;
struct client_lease {char* server_name; char* filename; TYPE_3__ nextserver; TYPE_2__ address; TYPE_1__* options; } ;
struct TYPE_10__ {int yiaddr; int siaddr; int* sname; int* file; } ;
struct TYPE_9__ {int len; int* data; } ;
struct TYPE_6__ {char* data; size_t len; } ;

/* Variables and functions */
 int DHCP_FILE_LEN ; 
 int DHCP_SNAME_LEN ; 
 size_t DHO_DHCP_OPTION_OVERLOAD ; 
 int /*<<< orphan*/  FUNC0 (struct client_lease*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct client_lease*) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct client_lease*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

struct client_lease *
FUNC6(struct packet *packet)
{
	struct client_lease *lease;
	int i;

	lease = FUNC2(sizeof(struct client_lease));

	if (!lease) {
		FUNC5("dhcpoffer: no memory to record lease.");
		return (NULL);
	}

	FUNC4(lease, 0, sizeof(*lease));

	/* Copy the lease options. */
	for (i = 0; i < 256; i++) {
		if (packet->options[i].len) {
			lease->options[i].data =
			    FUNC2(packet->options[i].len + 1);
			if (!lease->options[i].data) {
				FUNC5("dhcpoffer: no memory for option %d", i);
				FUNC1(lease);
				return (NULL);
			} else {
				FUNC3(lease->options[i].data,
				    packet->options[i].data,
				    packet->options[i].len);
				lease->options[i].len =
				    packet->options[i].len;
				lease->options[i].data[lease->options[i].len] =
				    0;
			}
			if (!FUNC0(lease,i)) {
				/* ignore a bogus lease offer */
				FUNC5("Invalid lease option - ignoring offer");
				FUNC1(lease);
				return (NULL);
			}
		}
	}

	lease->address.len = sizeof(packet->raw->yiaddr);
	FUNC3(lease->address.iabuf, &packet->raw->yiaddr, lease->address.len);

	lease->nextserver.len = sizeof(packet->raw->siaddr);
	FUNC3(lease->nextserver.iabuf, &packet->raw->siaddr, lease->nextserver.len);

	/* If the server name was filled out, copy it.
	   Do not attempt to validate the server name as a host name.
	   RFC 2131 merely states that sname is NUL-terminated (which do
	   do not assume) and that it is the server's host name.  Since
	   the ISC client and server allow arbitrary characters, we do
	   as well. */
	if ((!packet->options[DHO_DHCP_OPTION_OVERLOAD].len ||
	    !(packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 2)) &&
	    packet->raw->sname[0]) {
		lease->server_name = FUNC2(DHCP_SNAME_LEN + 1);
		if (!lease->server_name) {
			FUNC5("dhcpoffer: no memory for server name.");
			FUNC1(lease);
			return (NULL);
		}
		FUNC3(lease->server_name, packet->raw->sname, DHCP_SNAME_LEN);
		lease->server_name[DHCP_SNAME_LEN]='\0';
	}

	/* Ditto for the filename. */
	if ((!packet->options[DHO_DHCP_OPTION_OVERLOAD].len ||
	    !(packet->options[DHO_DHCP_OPTION_OVERLOAD].data[0] & 1)) &&
	    packet->raw->file[0]) {
		/* Don't count on the NUL terminator. */
		lease->filename = FUNC2(DHCP_FILE_LEN + 1);
		if (!lease->filename) {
			FUNC5("dhcpoffer: no memory for filename.");
			FUNC1(lease);
			return (NULL);
		}
		FUNC3(lease->filename, packet->raw->file, DHCP_FILE_LEN);
		lease->filename[DHCP_FILE_LEN]='\0';
	}
	return lease;
}