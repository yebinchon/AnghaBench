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
struct wpa_sm {int tdls_prohibited; int tdls_chan_switch_prohibited; } ;
struct ieee802_11_elems {int ext_capab_len; int /*<<< orphan*/ * ext_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ ParseFailed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct ieee802_11_elems*) ; 
 scalar_t__ FUNC3 (struct ieee802_11_elems*) ; 

void FUNC4(struct wpa_sm *sm, const u8 *ies, size_t len)
{
	struct ieee802_11_elems elems;

	if (ies == NULL ||
	    FUNC0(ies, len, &elems, 0) == ParseFailed ||
	    elems.ext_capab == NULL || elems.ext_capab_len < 5)
		return;

	if (!sm->tdls_prohibited && FUNC3(&elems)) {
		FUNC1(MSG_DEBUG, "TDLS: TDLS prohibited based on "
			   "(Re)Association Response IEs");
		sm->tdls_prohibited = 1;
	}

	if (!sm->tdls_chan_switch_prohibited &&
	    FUNC2(&elems)) {
		FUNC1(MSG_DEBUG,
			   "TDLS: TDLS channel switch prohibited based on (Re)Association Response IEs");
		sm->tdls_chan_switch_prohibited = 1;
	}
}