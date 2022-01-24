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
typedef  scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TYPE_NOTIFICATION ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPA_EVENT_EAP_NOTIFICATION ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(struct eap_sm *sm, const struct wpabuf *req)
{
	const u8 *pos;
	char *msg;
	size_t i, msg_len;

	pos = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_NOTIFICATION, req,
			       &msg_len);
	if (pos == NULL)
		return;
	FUNC4(MSG_DEBUG, "EAP: EAP-Request Notification data",
			  pos, msg_len);

	msg = FUNC3(msg_len + 1);
	if (msg == NULL)
		return;
	for (i = 0; i < msg_len; i++)
		msg[i] = FUNC1(pos[i]) ? (char) pos[i] : '_';
	msg[msg_len] = '\0';
	FUNC5(sm->msg_ctx, MSG_INFO, "%s%s",
		WPA_EVENT_EAP_NOTIFICATION, msg);
	FUNC2(msg);
}