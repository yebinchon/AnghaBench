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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ENROLLEE_NONCE ; 
 int /*<<< orphan*/  ATTR_REGISTRAR_NONCE ; 
 int /*<<< orphan*/  UPNP_WPS_WLANEVENT_TYPE_EAP ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 int /*<<< orphan*/  WPS_WSC_ACK ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wpabuf*) ; 
 scalar_t__ FUNC8 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC9(void)
{
	struct wpabuf *msg = FUNC0(100);
	if (msg == NULL)
		return NULL;
	FUNC5(msg, UPNP_WPS_WLANEVENT_TYPE_EAP);
	FUNC4(msg, "00:00:00:00:00:00");
	if (FUNC7(msg) ||
	    FUNC6(msg, WPS_WSC_ACK)) {
		FUNC1(msg);
		return NULL;
	}
	/* Enrollee Nonce */
	FUNC3(msg, ATTR_ENROLLEE_NONCE);
	FUNC3(msg, WPS_NONCE_LEN);
	FUNC2(msg, WPS_NONCE_LEN);
	/* Registrar Nonce */
	FUNC3(msg, ATTR_REGISTRAR_NONCE);
	FUNC3(msg, WPS_NONCE_LEN);
	FUNC2(msg, WPS_NONCE_LEN);
	if (FUNC8(msg, 0, NULL, 0, 0)) {
		FUNC1(msg);
		return NULL;
	}
	return msg;
}