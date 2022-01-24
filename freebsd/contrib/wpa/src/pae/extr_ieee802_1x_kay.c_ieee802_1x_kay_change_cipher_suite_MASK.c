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
struct ieee802_1x_mka_participant {int /*<<< orphan*/  new_sak; } ;
struct ieee802_1x_kay {unsigned int macsec_csindex; int macsec_capable; int /*<<< orphan*/  macsec_desired; } ;
typedef  enum macsec_cap { ____Placeholder_macsec_cap } macsec_cap ;
struct TYPE_2__ {int capable; } ;

/* Variables and functions */
 unsigned int CS_TABLE_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* cipher_suite_tbl ; 
 struct ieee802_1x_mka_participant* FUNC0 (struct ieee802_1x_kay*) ; 
 scalar_t__ FUNC1 (struct ieee802_1x_kay*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int
FUNC3(struct ieee802_1x_kay *kay,
				   unsigned int cs_index)
{
	struct ieee802_1x_mka_participant *participant;
	enum macsec_cap secy_cap;

	if (!kay)
		return -1;

	if (cs_index >= CS_TABLE_SIZE) {
		FUNC2(MSG_ERROR,
			   "KaY: Configured cipher suite index is out of range");
		return -1;
	}
	if (kay->macsec_csindex == cs_index)
		return -2;

	if (cs_index == 0)
		kay->macsec_desired = FALSE;

	kay->macsec_csindex = cs_index;
	kay->macsec_capable = cipher_suite_tbl[kay->macsec_csindex].capable;

	if (FUNC1(kay, &secy_cap) < 0)
		return -3;

	if (kay->macsec_capable > secy_cap)
		kay->macsec_capable = secy_cap;

	participant = FUNC0(kay);
	if (participant) {
		FUNC2(MSG_INFO, "KaY: Cipher Suite changed");
		participant->new_sak = TRUE;
	}

	return 0;
}