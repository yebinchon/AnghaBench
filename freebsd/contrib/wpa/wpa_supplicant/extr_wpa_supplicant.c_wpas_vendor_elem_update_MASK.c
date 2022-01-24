#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {scalar_t__* vendor_elem; TYPE_1__* global; struct wpa_supplicant* parent; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ p2p; int /*<<< orphan*/  p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 unsigned int NUM_VENDOR_ELEM_FRAMES ; 
 int FUNC0 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct wpa_supplicant *wpa_s)
{
	unsigned int i;
	char buf[30];

	FUNC4(MSG_DEBUG, "Update vendor elements");

	for (i = 0; i < NUM_VENDOR_ELEM_FRAMES; i++) {
		if (wpa_s->vendor_elem[i]) {
			int res;

			res = FUNC0(buf, sizeof(buf), "frame[%u]", i);
			if (!FUNC1(sizeof(buf), res)) {
				FUNC3(MSG_DEBUG, buf,
						wpa_s->vendor_elem[i]);
			}
		}
	}

#ifdef CONFIG_P2P
	if (wpa_s->parent == wpa_s &&
	    wpa_s->global->p2p &&
	    !wpa_s->global->p2p_disabled)
		p2p_set_vendor_elems(wpa_s->global->p2p, wpa_s->vendor_elem);
#endif /* CONFIG_P2P */
}