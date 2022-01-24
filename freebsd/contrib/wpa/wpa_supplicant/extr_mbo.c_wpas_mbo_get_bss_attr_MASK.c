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
typedef  int u8 ;
struct wpa_bss {int dummy; } ;
typedef  enum mbo_attr_id { ____Placeholder_mbo_attr_id } mbo_attr_id ;

/* Variables and functions */
 int /*<<< orphan*/  MBO_IE_HEADER ; 
 int /*<<< orphan*/  MBO_IE_VENDOR_TYPE ; 
 int const* FUNC0 (int const*,int,int) ; 
 int* FUNC1 (struct wpa_bss*,int /*<<< orphan*/ ) ; 

const u8 * FUNC2(struct wpa_bss *bss, enum mbo_attr_id attr)
{
	const u8 *mbo, *end;

	if (!bss)
		return NULL;

	mbo = FUNC1(bss, MBO_IE_VENDOR_TYPE);
	if (!mbo)
		return NULL;

	end = mbo + 2 + mbo[1];
	mbo += MBO_IE_HEADER;

	return FUNC0(mbo, end - mbo, attr);
}