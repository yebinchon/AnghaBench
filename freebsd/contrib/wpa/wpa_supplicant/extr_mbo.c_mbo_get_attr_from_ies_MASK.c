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
typedef  enum mbo_attr_id { ____Placeholder_mbo_attr_id } mbo_attr_id ;

/* Variables and functions */
 int /*<<< orphan*/  MBO_IE_VENDOR_TYPE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*,int) ; 

const u8 * FUNC2(const u8 *ies, size_t ies_len,
				 enum mbo_attr_id attr)
{
	const u8 *mbo_ie;

	mbo_ie = FUNC0(ies, ies_len, MBO_IE_VENDOR_TYPE);
	if (!mbo_ie)
		return NULL;

	return FUNC1(mbo_ie, attr);
}