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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  kck; } ;
struct wpa_tdls_peer {int /*<<< orphan*/  rsnie_p; TYPE_1__ tpk; scalar_t__ tpk_set; } ;
struct wpa_tdls_ftie {int /*<<< orphan*/ * mic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(u8 trans_seq,
					  struct wpa_tdls_peer *peer,
					  const u8 *lnkid, const u8 *timeoutie,
					  const struct wpa_tdls_ftie *ftie)
{
	u8 mic[16];

	if (peer->tpk_set) {
		FUNC3(peer->tpk.kck, trans_seq, lnkid,
				  peer->rsnie_p, timeoutie, (u8 *) ftie,
				  mic);
		if (FUNC0(mic, ftie->mic, 16) != 0) {
			FUNC2(MSG_INFO, "TDLS: Invalid MIC in FTIE - "
				   "dropping packet");
			FUNC1(MSG_DEBUG, "TDLS: Received MIC",
				    ftie->mic, 16);
			FUNC1(MSG_DEBUG, "TDLS: Calculated MIC",
				    mic, 16);
			return -1;
		}
	} else {
		FUNC2(MSG_WARNING, "TDLS: Could not verify TDLS MIC, "
			   "TPK not set - dropping packet");
		return -1;
	}
	return 0;
}