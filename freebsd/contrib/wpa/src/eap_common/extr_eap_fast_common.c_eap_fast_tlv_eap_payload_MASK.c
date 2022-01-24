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
struct pac_tlv_hdr {int dummy; } ;

/* Variables and functions */
 int EAP_TLV_EAP_PAYLOAD_TLV ; 
 int EAP_TLV_TYPE_MANDATORY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wpabuf*) ; 

struct wpabuf * FUNC5(struct wpabuf *buf)
{
	struct wpabuf *e;

	if (buf == NULL)
		return NULL;

	/* Encapsulate EAP packet in EAP-Payload TLV */
	FUNC1(MSG_DEBUG, "EAP-FAST: Add EAP-Payload TLV");
	e = FUNC2(sizeof(struct pac_tlv_hdr) + FUNC4(buf));
	if (e == NULL) {
		FUNC1(MSG_DEBUG, "EAP-FAST: Failed to allocate memory "
			   "for TLV encapsulation");
		FUNC3(buf);
		return NULL;
	}
	FUNC0(e,
			     EAP_TLV_TYPE_MANDATORY | EAP_TLV_EAP_PAYLOAD_TLV,
			     buf);
	FUNC3(buf);
	return e;
}