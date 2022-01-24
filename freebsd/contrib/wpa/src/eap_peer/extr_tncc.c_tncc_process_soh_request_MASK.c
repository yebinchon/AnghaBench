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
 int EAP_TLV_VENDOR_SPECIFIC_TLV ; 
 scalar_t__ EAP_VENDOR_MICROSOFT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 struct wpabuf* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

struct wpabuf * FUNC5(int ver, const u8 *data, size_t len)
{
	const u8 *pos;

	FUNC3(MSG_DEBUG, "TNC: SoH Request", data, len);

	if (len < 12)
		return NULL;

	/* SoH Request */
	pos = data;

	/* TLV Type */
	if (FUNC0(pos) != EAP_TLV_VENDOR_SPECIFIC_TLV)
		return NULL;
	pos += 2;

	/* Length */
	if (FUNC0(pos) < 8)
		return NULL;
	pos += 2;

	/* Vendor_Id */
	if (FUNC1(pos) != EAP_VENDOR_MICROSOFT)
		return NULL;
	pos += 4;

	/* TLV Type */
	if (FUNC0(pos) != 0x02 /* SoH request TLV */)
		return NULL;

	FUNC4(MSG_DEBUG, "TNC: SoH Request TLV received");

	return FUNC2(2);
}