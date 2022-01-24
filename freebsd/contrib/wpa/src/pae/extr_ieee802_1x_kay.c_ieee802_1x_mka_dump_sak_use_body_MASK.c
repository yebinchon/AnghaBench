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
struct ieee802_1x_mka_sak_use_body {int lan; int oan; int /*<<< orphan*/  olpn; int /*<<< orphan*/  okn; int /*<<< orphan*/  osrv_mi; int /*<<< orphan*/  llpn; int /*<<< orphan*/  lkn; int /*<<< orphan*/  lsrv_mi; int /*<<< orphan*/  delay_protect; int /*<<< orphan*/  prx; int /*<<< orphan*/  ptx; int /*<<< orphan*/  orx; int /*<<< orphan*/  otx; int /*<<< orphan*/  lrx; int /*<<< orphan*/  ltx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ieee802_1x_mka_sak_use_body*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee802_1x_mka_sak_use_body *body)
{
	int body_len;

	if (body == NULL)
		return;

	/* IEEE Std 802.1X-2010, Figure 11-10 */
	body_len = FUNC1(body);
	FUNC3(MSG_DEBUG, "MACsec SAK Use parameter set");
	FUNC3(MSG_DEBUG, "\tLatest Key AN....: %d", body->lan);
	FUNC3(MSG_DEBUG, "\tLatest Key Tx....: %s", FUNC4(body->ltx));
	FUNC3(MSG_DEBUG, "\tLatest Key Rx....: %s", FUNC4(body->lrx));
	FUNC3(MSG_DEBUG, "\tOld Key AN.......: %d", body->oan);
	FUNC3(MSG_DEBUG, "\tOld Key Tx.......: %s", FUNC4(body->otx));
	FUNC3(MSG_DEBUG, "\tOld Key Rx.......: %s", FUNC4(body->orx));
	FUNC3(MSG_DEBUG, "\tPlain Tx.........: %s", FUNC4(body->ptx));
	FUNC3(MSG_DEBUG, "\tPlain Rx.........: %s", FUNC4(body->prx));
	FUNC3(MSG_DEBUG, "\tDelay Protect....: %s",
		   FUNC4(body->delay_protect));
	FUNC3(MSG_DEBUG, "\tBody Length......: %d", body_len);
	if (!body_len)
		return;

	FUNC3(MSG_DEBUG, "\tKey Server MI....: %s", FUNC2(body->lsrv_mi));
	FUNC3(MSG_DEBUG, "\tKey Number.......: %u",
		   FUNC0(body->lkn));
	FUNC3(MSG_DEBUG, "\tLowest PN........: %u",
		   FUNC0(body->llpn));
	FUNC3(MSG_DEBUG, "\tOld Key Server MI: %s", FUNC2(body->osrv_mi));
	FUNC3(MSG_DEBUG, "\tOld Key Number...: %u",
		   FUNC0(body->okn));
	FUNC3(MSG_DEBUG, "\tOld Lowest PN....: %u",
		   FUNC0(body->olpn));
}