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
 int EAP_TLV_VENDOR_SPECIFIC_TLV ; 
 int /*<<< orphan*/  EAP_VENDOR_MICROSOFT ; 
 struct wpabuf* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 

struct wpabuf * FUNC3(void)
{
	struct wpabuf *buf;

	/*
	 * Build a SoH Request TLV (to be used inside SoH EAP Extensions
	 * Method)
	 */

	buf = FUNC0(8 + 4);
	if (buf == NULL)
		return NULL;

	/* Vendor-Specific TLV (Microsoft) - SoH Request */
	FUNC1(buf, EAP_TLV_VENDOR_SPECIFIC_TLV); /* TLV Type */
	FUNC1(buf, 8); /* Length */

	FUNC2(buf, EAP_VENDOR_MICROSOFT); /* Vendor_Id */

	FUNC1(buf, 0x02); /* TLV Type - SoH Request TLV */
	FUNC1(buf, 0); /* Length */

	return buf;
}