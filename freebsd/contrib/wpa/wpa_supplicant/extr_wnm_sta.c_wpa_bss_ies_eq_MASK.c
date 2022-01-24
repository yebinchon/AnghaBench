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
struct wpa_bss {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const*,scalar_t__ const*,scalar_t__ const) ; 
 scalar_t__* FUNC1 (struct wpa_bss*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct wpa_bss *a, struct wpa_bss *b, u8 eid)
{
	const u8 *ie_a, *ie_b;

	if (!a || !b)
		return 0;

	ie_a = FUNC1(a, eid);
	ie_b = FUNC1(b, eid);

	if (!ie_a || !ie_b || ie_a[1] != ie_b[1])
		return 0;

	return FUNC0(ie_a, ie_b, ie_a[1]) == 0;
}