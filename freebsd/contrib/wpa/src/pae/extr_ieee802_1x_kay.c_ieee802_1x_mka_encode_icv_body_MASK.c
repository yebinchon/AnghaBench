#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  key; } ;
struct ieee802_1x_mka_participant {TYPE_2__ ick; TYPE_1__* kay; } ;
struct ieee802_1x_mka_icv_body {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ icv_len; scalar_t__ (* icv_hash ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {size_t mka_algindex; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_ICV_LEN ; 
 int MAX_ICV_LEN ; 
 unsigned int MKA_HDR_LEN ; 
 int /*<<< orphan*/  MKA_ICV_INDICATOR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 unsigned int FUNC0 (struct ieee802_1x_mka_participant*) ; 
 TYPE_3__* mka_alg_tbl ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802_1x_mka_icv_body*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_1x_mka_icv_body*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 struct ieee802_1x_mka_icv_body* FUNC8 (struct wpabuf*,unsigned int) ; 

__attribute__((used)) static int
FUNC9(struct ieee802_1x_mka_participant *participant,
			       struct wpabuf *buf)
{
	struct ieee802_1x_mka_icv_body *body;
	unsigned int length;
	u8 cmac[MAX_ICV_LEN];

	length = FUNC0(participant);
	if (mka_alg_tbl[participant->kay->mka_algindex].icv_len !=
	    DEFAULT_ICV_LEN)  {
		FUNC5(MSG_DEBUG, "KaY: ICV Indicator");
		body = FUNC8(buf, MKA_HDR_LEN);
		body->type = MKA_ICV_INDICATOR;
		length -= MKA_HDR_LEN;
		FUNC2(body, length);
	}

	if (mka_alg_tbl[participant->kay->mka_algindex].icv_hash(
		    participant->ick.key, participant->ick.len,
		    FUNC6(buf), FUNC7(buf), cmac)) {
		FUNC5(MSG_ERROR, "KaY: failed to calculate ICV");
		return -1;
	}
	FUNC4(MSG_DEBUG, "KaY: ICV", cmac, length);

	FUNC1(FUNC8(buf, length), cmac, length);

	return 0;
}