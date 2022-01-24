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
struct ieee802_1x_mka_basic_body {size_t version; size_t priority; size_t key_server; size_t macsec_desired; size_t macsec_capability; int /*<<< orphan*/  ckn; int /*<<< orphan*/  algo_agility; int /*<<< orphan*/  actor_mn; int /*<<< orphan*/  actor_mi; int /*<<< orphan*/  actor_sci; } ;

/* Variables and functions */
 scalar_t__ MKA_HDR_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct ieee802_1x_mka_basic_body*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC7(struct ieee802_1x_mka_basic_body *body)
{
	size_t body_len;

	if (!body)
		return;

	/* IEEE Std 802.1X-2010, Figure 11-8 */
	body_len = FUNC2(body);
	FUNC6(MSG_DEBUG, "MKA Basic Parameter Set");
	FUNC6(MSG_DEBUG, "\tMKA Version Identifier: %d", body->version);
	FUNC6(MSG_DEBUG, "\tKey Server Priority: %d", body->priority);
	FUNC6(MSG_DEBUG, "\tKey Server: %d", body->key_server);
	FUNC6(MSG_DEBUG, "\tMACsec Desired: %d", body->macsec_desired);
	FUNC6(MSG_DEBUG, "\tMACsec Capability: %d",
		   body->macsec_capability);
	FUNC6(MSG_DEBUG, "\tParameter set body length: %zu", body_len);
	FUNC6(MSG_DEBUG, "\tSCI: %s", FUNC4(&body->actor_sci));
	FUNC6(MSG_DEBUG, "\tActor's Member Identifier: %s",
		   FUNC3(body->actor_mi));
	FUNC6(MSG_DEBUG, "\tActor's Message Number: %d",
		   FUNC1(body->actor_mn));
	FUNC6(MSG_DEBUG, "\tAlgorithm Agility: %s",
		   FUNC0(body->algo_agility));
	FUNC5(MSG_DEBUG, "\tCAK Name", body->ckn,
		    body_len + MKA_HDR_LEN - sizeof(*body));
}