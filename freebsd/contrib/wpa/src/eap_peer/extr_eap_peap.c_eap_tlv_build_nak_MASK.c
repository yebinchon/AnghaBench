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
typedef  int u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int EAP_TLV_NAK_TLV ; 
 int /*<<< orphan*/  EAP_TYPE_TLV ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC4(int id, u16 nak_type)
{
	struct wpabuf *msg;

	msg = FUNC0(EAP_VENDOR_IETF, EAP_TYPE_TLV, 10,
			    EAP_CODE_RESPONSE, id);
	if (msg == NULL)
		return NULL;

	FUNC3(msg, 0x80); /* Mandatory */
	FUNC3(msg, EAP_TLV_NAK_TLV);
	FUNC1(msg, 6); /* Length */
	FUNC2(msg, 0); /* Vendor-Id */
	FUNC1(msg, nak_type); /* NAK-Type */

	return msg;
}