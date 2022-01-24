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
 int /*<<< orphan*/  EAP_VENDOR_TYPE_WSC ; 
 int /*<<< orphan*/  EAP_VENDOR_WFA ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WSC_FRAG_ACK ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

struct wpabuf * FUNC3(u8 id, u8 code)
{
	struct wpabuf *msg;

	msg = FUNC0(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, 2, code, id);
	if (msg == NULL) {
		FUNC1(MSG_ERROR, "EAP-WSC: Failed to allocate memory for "
			   "FRAG_ACK");
		return NULL;
	}

	FUNC1(MSG_DEBUG, "EAP-WSC: Send WSC/FRAG_ACK");
	FUNC2(msg, WSC_FRAG_ACK); /* Op-Code */
	FUNC2(msg, 0); /* Flags */

	return msg;
}