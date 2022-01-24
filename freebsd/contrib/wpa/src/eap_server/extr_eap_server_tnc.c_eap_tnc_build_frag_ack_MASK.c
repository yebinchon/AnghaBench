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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TNC_VERSION ; 
 int /*<<< orphan*/  EAP_TYPE_TNC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC3(u8 id, u8 code)
{
	struct wpabuf *msg;

	msg = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TNC, 1, code, id);
	if (msg == NULL) {
		FUNC1(MSG_ERROR, "EAP-TNC: Failed to allocate memory "
			   "for fragment ack");
		return NULL;
	}
	FUNC2(msg, EAP_TNC_VERSION); /* Flags */

	FUNC1(MSG_DEBUG, "EAP-TNC: Send fragment ack");

	return msg;
}