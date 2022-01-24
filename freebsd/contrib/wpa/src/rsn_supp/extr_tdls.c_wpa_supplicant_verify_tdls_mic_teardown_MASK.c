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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  kck; } ;
struct wpa_tdls_peer {TYPE_1__ tpk; scalar_t__ tpk_set; } ;
struct wpa_tdls_ftie {int /*<<< orphan*/  mic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	u8 trans_seq, u16 rcode, u8 dtoken, struct wpa_tdls_peer *peer,
	const u8 *lnkid, const struct wpa_tdls_ftie *ftie)
{
	u8 mic[16];

	if (peer->tpk_set) {
		FUNC2(peer->tpk.kck, trans_seq, rcode,
					  dtoken, lnkid, (u8 *) ftie, mic);
		if (FUNC0(mic, ftie->mic, 16) != 0) {
			FUNC1(MSG_INFO, "TDLS: Invalid MIC in Teardown - "
				   "dropping packet");
			return -1;
		}
	} else {
		FUNC1(MSG_INFO, "TDLS: Could not verify TDLS Teardown "
			   "MIC, TPK not set - dropping packet");
		return -1;
	}
	return 0;
}