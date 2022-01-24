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
struct wps_er {int /*<<< orphan*/  multicast_sd; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  dest ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  UPNP_MULTICAST_ADDRESS ; 
 int /*<<< orphan*/  UPNP_MULTICAST_PORT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,char*) ; 

void FUNC11(struct wps_er *er)
{
	struct wpabuf *msg;
	struct sockaddr_in dest;

	msg = FUNC6(500);
	if (msg == NULL)
		return;

	FUNC10(msg,
		       "M-SEARCH * HTTP/1.1\r\n"
		       "HOST: 239.255.255.250:1900\r\n"
		       "MAN: \"ssdp:discover\"\r\n"
		       "MX: 3\r\n"
		       "ST: urn:schemas-wifialliance-org:device:WFADevice:1"
		       "\r\n"
		       "\r\n");

	FUNC2(&dest, 0, sizeof(dest));
	dest.sin_family = AF_INET;
	dest.sin_addr.s_addr = FUNC1(UPNP_MULTICAST_ADDRESS);
	dest.sin_port = FUNC0(UPNP_MULTICAST_PORT);

	if (FUNC3(er->multicast_sd, FUNC8(msg), FUNC9(msg), 0,
		   (struct sockaddr *) &dest, sizeof(dest)) < 0)
		FUNC5(MSG_DEBUG, "WPS ER: M-SEARCH sendto failed: "
			   "%d (%s)", errno, FUNC4(errno));

	FUNC7(msg);
}