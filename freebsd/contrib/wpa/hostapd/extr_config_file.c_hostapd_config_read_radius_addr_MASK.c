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
struct hostapd_radius_server {int port; int /*<<< orphan*/  index; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_radius_server*,int /*<<< orphan*/ ,int) ; 
 struct hostapd_radius_server* FUNC2 (struct hostapd_radius_server*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct hostapd_radius_server **server,
				int *num_server, const char *val, int def_port,
				struct hostapd_radius_server **curr_serv)
{
	struct hostapd_radius_server *nserv;
	int ret;
	static int server_index = 1;

	nserv = FUNC2(*server, *num_server + 1, sizeof(*nserv));
	if (nserv == NULL)
		return -1;

	*server = nserv;
	nserv = &nserv[*num_server];
	(*num_server)++;
	(*curr_serv) = nserv;

	FUNC1(nserv, 0, sizeof(*nserv));
	nserv->port = def_port;
	ret = FUNC0(val, &nserv->addr);
	nserv->index = server_index++;

	return ret;
}