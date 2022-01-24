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
struct wpa_tdls_peer {int ext_capab_len; int /*<<< orphan*/ * ext_capab; } ;
struct wpa_eapol_ie_parse {int ext_capab_len; scalar_t__ ext_capab; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(const struct wpa_eapol_ie_parse *kde,
			       struct wpa_tdls_peer *peer)
{
	if (!kde->ext_capab) {
		FUNC3(MSG_DEBUG, "TDLS: No extended capabilities "
			   "received");
		return 0;
	}

	if (!peer->ext_capab || peer->ext_capab_len < kde->ext_capab_len - 2) {
		/* Need to allocate buffer to fit the new information */
		FUNC0(peer->ext_capab);
		peer->ext_capab = FUNC2(kde->ext_capab_len - 2);
		if (peer->ext_capab == NULL)
			return -1;
	}

	peer->ext_capab_len = kde->ext_capab_len - 2;
	FUNC1(peer->ext_capab, kde->ext_capab + 2, peer->ext_capab_len);

	return 0;
}