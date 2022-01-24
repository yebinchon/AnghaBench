#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct wpa_supplicant {TYPE_1__** vendor_elem; } ;
struct TYPE_4__ {size_t used; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 scalar_t__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpa_supplicant*) ; 

int FUNC6(struct wpa_supplicant *wpa_s, int frame,
			    const u8 *elem, size_t len)
{
	u8 *ie, *end;

	ie = FUNC4(wpa_s->vendor_elem[frame]);
	end = ie + FUNC3(wpa_s->vendor_elem[frame]);

	for (; ie + 1 < end; ie += 2 + ie[1]) {
		if (ie + len > end)
			break;
		if (FUNC0(ie, elem, len) != 0)
			continue;

		if (FUNC3(wpa_s->vendor_elem[frame]) == len) {
			FUNC2(wpa_s->vendor_elem[frame]);
			wpa_s->vendor_elem[frame] = NULL;
		} else {
			FUNC1(ie, ie + len, end - (ie + len));
			wpa_s->vendor_elem[frame]->used -= len;
		}
		FUNC5(wpa_s);
		return 0;
	}

	return -1;
}