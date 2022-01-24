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
struct ssh {char const* remote_ipaddr; int remote_port; int local_port; void* local_ipaddr; TYPE_1__* state; } ;
struct TYPE_2__ {int connection_in; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 
 char const* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct ssh*) ; 
 void* FUNC5 (char*) ; 

const char *
FUNC6(struct ssh *ssh)
{
	int sock;

	/* Check whether we have cached the ipaddr. */
	if (ssh->remote_ipaddr == NULL) {
		if (FUNC4(ssh)) {
			sock = ssh->state->connection_in;
			ssh->remote_ipaddr = FUNC2(sock);
			ssh->remote_port = FUNC3(sock);
			ssh->local_ipaddr = FUNC0(sock);
			ssh->local_port = FUNC1(sock);
		} else {
			ssh->remote_ipaddr = FUNC5("UNKNOWN");
			ssh->remote_port = 65535;
			ssh->local_ipaddr = FUNC5("UNKNOWN");
			ssh->local_port = 65535;
		}
	}
	return ssh->remote_ipaddr;
}