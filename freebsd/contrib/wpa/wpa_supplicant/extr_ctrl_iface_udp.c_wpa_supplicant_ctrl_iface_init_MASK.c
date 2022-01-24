#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {TYPE_2__* conf; } ;
struct sockaddr_in6 {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {void* sin_port; void* sin6_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct ctrl_iface_priv {int sock; int /*<<< orphan*/  cookie; struct wpa_supplicant* wpa_s; } ;
typedef  int /*<<< orphan*/  port_str ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_4__ {struct ctrl_iface_priv* ctrl_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  COOKIE_LEN ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int PF_INET ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int WPA_CTRL_IFACE_PORT ; 
 int WPA_CTRL_IFACE_PORT_LIMIT ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct wpa_supplicant*,struct ctrl_iface_priv*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ctrl_iface_priv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 struct ctrl_iface_priv* FUNC11 (char*) ; 
 char* FUNC12 (struct ctrl_iface_priv*,char*) ; 
 struct ctrl_iface_priv* FUNC13 (int) ; 
 int FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ctrl_iface_priv* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,struct ctrl_iface_priv*) ; 
 int /*<<< orphan*/  wpa_supplicant_ctrl_iface_msg_cb ; 
 int /*<<< orphan*/  wpa_supplicant_ctrl_iface_receive ; 

struct ctrl_iface_priv *
FUNC19(struct wpa_supplicant *wpa_s)
{
	struct ctrl_iface_priv *priv;
	char port_str[40];
	int port = WPA_CTRL_IFACE_PORT;
	char *pos;
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	struct sockaddr_in6 addr;
	int domain = PF_INET6;
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	struct sockaddr_in addr;
	int domain = PF_INET;
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */

	priv = FUNC13(sizeof(*priv));
	if (priv == NULL)
		return NULL;
	priv->wpa_s = wpa_s;
	priv->sock = -1;
	FUNC8(priv->cookie, COOKIE_LEN);

	if (wpa_s->conf->ctrl_interface == NULL)
		return priv;

	pos = FUNC12(wpa_s->conf->ctrl_interface, "udp:");
	if (pos) {
		pos += 4;
		port = FUNC0(pos);
		if (port <= 0) {
			FUNC18(MSG_ERROR, "Invalid ctrl_iface UDP port: %s",
				   wpa_s->conf->ctrl_interface);
			goto fail;
		}
	}

	priv->sock = FUNC14(domain, SOCK_DGRAM, 0);
	if (priv->sock < 0) {
		FUNC18(MSG_ERROR, "socket(PF_INET): %s", FUNC15(errno));
		goto fail;
	}

	FUNC9(&addr, 0, sizeof(addr));
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	addr.sin6_family = AF_INET6;
#ifdef CONFIG_CTRL_IFACE_UDP_REMOTE
	addr.sin6_addr = in6addr_any;
#else /* CONFIG_CTRL_IFACE_UDP_REMOTE */
	inet_pton(AF_INET6, "::1", &addr.sin6_addr);
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	addr.sin_family = AF_INET;
#ifdef CONFIG_CTRL_IFACE_UDP_REMOTE
	addr.sin_addr.s_addr = INADDR_ANY;
#else /* CONFIG_CTRL_IFACE_UDP_REMOTE */
	addr.sin_addr.s_addr = FUNC4((127 << 24) | 1);
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
try_again:
#ifdef CONFIG_CTRL_IFACE_UDP_IPV6
	addr.sin6_port = htons(port);
#else /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	addr.sin_port = FUNC5(port);
#endif /* CONFIG_CTRL_IFACE_UDP_IPV6 */
	if (FUNC1(priv->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		port--;
		if ((WPA_CTRL_IFACE_PORT - port) < WPA_CTRL_IFACE_PORT_LIMIT)
			goto try_again;
		FUNC18(MSG_ERROR, "bind(AF_INET): %s", FUNC15(errno));
		goto fail;
	}

	/* Update the ctrl_interface value to match the selected port */
	FUNC10(port_str, sizeof(port_str), "udp:%d", port);
	FUNC7(wpa_s->conf->ctrl_interface);
	wpa_s->conf->ctrl_interface = FUNC11(port_str);
	if (!wpa_s->conf->ctrl_interface) {
		FUNC16(wpa_s, MSG_ERROR, "Failed to malloc ctrl_interface");
		goto fail;
	}

#ifdef CONFIG_CTRL_IFACE_UDP_REMOTE
	wpa_msg(wpa_s, MSG_DEBUG, "ctrl_iface_init UDP port: %d", port);
#endif /* CONFIG_CTRL_IFACE_UDP_REMOTE */

	FUNC3(priv->sock, wpa_supplicant_ctrl_iface_receive,
				 wpa_s, priv);
	FUNC17(wpa_supplicant_ctrl_iface_msg_cb);

	return priv;

fail:
	if (priv->sock >= 0)
		FUNC2(priv->sock);
	FUNC7(priv);
	return NULL;
}