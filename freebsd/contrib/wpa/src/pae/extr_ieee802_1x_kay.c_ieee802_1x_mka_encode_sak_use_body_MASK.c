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
typedef  scalar_t__ u32 ;
struct wpabuf {int dummy; } ;
struct ieee802_1x_mka_sak_use_body {int ptx; int prx; int delay_protect; void* lrx; void* ltx; void* orx; void* otx; void* okn; int /*<<< orphan*/  osrv_mi; int /*<<< orphan*/  oan; void* lkn; int /*<<< orphan*/  lsrv_mi; scalar_t__ lan; void* olpn; void* llpn; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ kn; int /*<<< orphan*/  mi; } ;
struct ieee802_1x_mka_participant {TYPE_1__ oki; TYPE_1__ lki; int /*<<< orphan*/  oan; void* ltx; void* lrx; scalar_t__ lan; void* new_sak; scalar_t__ is_key_server; struct ieee802_1x_kay* kay; } ;
struct ieee802_1x_kay {scalar_t__ mka_hello_time; scalar_t__ pn_exhaustion; scalar_t__ macsec_validate; void* rx_enable; void* port_enable; void* tx_enable; int /*<<< orphan*/  macsec_protect; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ MKA_BOUNDED_HELLO_TIME ; 
 unsigned int MKA_HDR_LEN ; 
 int /*<<< orphan*/  MKA_SAK_USE ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 scalar_t__ Strict ; 
 void* TRUE ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802_1x_mka_sak_use_body*) ; 
 scalar_t__ FUNC2 (struct ieee802_1x_mka_participant*,TYPE_1__*) ; 
 unsigned int FUNC3 (struct ieee802_1x_mka_participant*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee802_1x_mka_sak_use_body*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct ieee802_1x_mka_sak_use_body* FUNC7 (struct wpabuf*,unsigned int) ; 

__attribute__((used)) static int
FUNC8(
	struct ieee802_1x_mka_participant *participant,
	struct wpabuf *buf)
{
	struct ieee802_1x_mka_sak_use_body *body;
	struct ieee802_1x_kay *kay = participant->kay;
	unsigned int length;
	u32 pn = 1;

	length = FUNC3(participant);
	body = FUNC7(buf, length);

	body->type = MKA_SAK_USE;
	FUNC5(body, length - MKA_HDR_LEN);

	if (length == MKA_HDR_LEN) {
		body->ptx = TRUE;
		body->prx = TRUE;
		body->lan = 0;
		body->lrx = FALSE;
		body->ltx = FALSE;
		body->delay_protect = FALSE;
		return 0;
	}

	/* data delay protect */
	body->delay_protect = kay->mka_hello_time <= MKA_BOUNDED_HELLO_TIME;
	/* lowest accept packet number */
	pn = FUNC2(participant, &participant->lki);
	if (pn > kay->pn_exhaustion) {
		FUNC6(MSG_WARNING, "KaY: My LPN exhaustion");
		if (participant->is_key_server)
			participant->new_sak = TRUE;
	}

	body->llpn = FUNC0(pn);
	pn = FUNC2(participant, &participant->oki);
	body->olpn = FUNC0(pn);

	/* plain tx, plain rx */
	body->ptx = !kay->macsec_protect;
	body->prx = kay->macsec_validate != Strict;

	/* latest key: rx, tx, key server member identifier key number */
	body->lan = participant->lan;
	FUNC4(body->lsrv_mi, participant->lki.mi, sizeof(body->lsrv_mi));
	body->lkn = FUNC0(participant->lki.kn);
	body->lrx = participant->lrx;
	body->ltx = participant->ltx;

	/* old key: rx, tx, key server member identifier key number */
	body->oan = participant->oan;
	if (participant->oki.kn != participant->lki.kn &&
	    participant->oki.kn != 0) {
		body->otx = TRUE;
		body->orx = TRUE;
		FUNC4(body->osrv_mi, participant->oki.mi,
			  sizeof(body->osrv_mi));
		body->okn = FUNC0(participant->oki.kn);
	} else {
		body->otx = FALSE;
		body->orx = FALSE;
	}

	/* set CP's variable */
	if (body->ltx) {
		kay->tx_enable = TRUE;
		kay->port_enable = TRUE;
	}
	if (body->lrx)
		kay->rx_enable = TRUE;

	FUNC1(body);
	return 0;
}