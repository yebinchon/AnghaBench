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
struct radius_client_data {scalar_t__ auth_serv_sock; scalar_t__ auth_serv_sock6; struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {int /*<<< orphan*/  auth_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 scalar_t__ RADIUS_AUTH ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,struct radius_client_data*,void*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct radius_client_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  radius_client_receive ; 
 int /*<<< orphan*/  FUNC3 (struct radius_client_data*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC7(struct radius_client_data *radius)
{
	struct hostapd_radius_servers *conf = radius->conf;
	int ok = 0;

	FUNC3(radius);

	radius->auth_serv_sock = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (radius->auth_serv_sock < 0)
		FUNC6(MSG_INFO, "RADIUS: socket[PF_INET,SOCK_DGRAM]: %s",
			   FUNC5(errno));
	else {
		FUNC2(radius->auth_serv_sock);
		ok++;
	}

#ifdef CONFIG_IPV6
	radius->auth_serv_sock6 = socket(PF_INET6, SOCK_DGRAM, 0);
	if (radius->auth_serv_sock6 < 0)
		wpa_printf(MSG_INFO, "RADIUS: socket[PF_INET6,SOCK_DGRAM]: %s",
			   strerror(errno));
	else
		ok++;
#endif /* CONFIG_IPV6 */

	if (ok == 0)
		return -1;

	FUNC1(radius, conf->auth_server, NULL,
			     radius->auth_serv_sock, radius->auth_serv_sock6,
			     1);

	if (radius->auth_serv_sock >= 0 &&
	    FUNC0(radius->auth_serv_sock,
				     radius_client_receive, radius,
				     (void *) RADIUS_AUTH)) {
		FUNC6(MSG_INFO, "RADIUS: Could not register read socket for authentication server");
		FUNC3(radius);
		return -1;
	}

#ifdef CONFIG_IPV6
	if (radius->auth_serv_sock6 >= 0 &&
	    eloop_register_read_sock(radius->auth_serv_sock6,
				     radius_client_receive, radius,
				     (void *) RADIUS_AUTH)) {
		wpa_printf(MSG_INFO, "RADIUS: Could not register read socket for authentication server");
		radius_close_auth_sockets(radius);
		return -1;
	}
#endif /* CONFIG_IPV6 */

	return 0;
}