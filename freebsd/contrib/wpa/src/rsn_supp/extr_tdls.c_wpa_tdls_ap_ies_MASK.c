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
struct wpa_sm {int /*<<< orphan*/  tdls_chan_switch_prohibited; int /*<<< orphan*/  tdls_prohibited; } ;
struct ieee802_11_elems {int ext_capab_len; int /*<<< orphan*/ * ext_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ ParseFailed ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_11_elems*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee802_11_elems*) ; 

void FUNC4(struct wpa_sm *sm, const u8 *ies, size_t len)
{
	struct ieee802_11_elems elems;

	sm->tdls_prohibited = 0;
	sm->tdls_chan_switch_prohibited = 0;

	if (ies == NULL ||
	    FUNC0(ies, len, &elems, 0) == ParseFailed ||
	    elems.ext_capab == NULL || elems.ext_capab_len < 5)
		return;

	sm->tdls_prohibited = FUNC3(&elems);
	FUNC1(MSG_DEBUG, "TDLS: TDLS is %s in the target BSS",
		   sm->tdls_prohibited ? "prohibited" : "allowed");
	sm->tdls_chan_switch_prohibited =
		FUNC2(&elems);
	FUNC1(MSG_DEBUG, "TDLS: TDLS channel switch %s in the target BSS",
		   sm->tdls_chan_switch_prohibited ? "prohibited" : "allowed");
}