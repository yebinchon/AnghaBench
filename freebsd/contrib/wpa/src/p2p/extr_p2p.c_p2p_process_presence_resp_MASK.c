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
struct p2p_message {int /*<<< orphan*/  noa_len; int /*<<< orphan*/ * noa; scalar_t__* status; } ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* presence_resp ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_data*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_message*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct p2p_data *p2p, const u8 *da,
				      const u8 *sa, const u8 *data, size_t len)
{
	struct p2p_message msg;

	FUNC0(p2p, "Received P2P Action - P2P Presence Response");

	if (FUNC1(data, len, &msg) < 0) {
		FUNC0(p2p, "Failed to parse P2P Presence Response");
		return;
	}

	if (msg.status == NULL || msg.noa == NULL) {
		FUNC0(p2p, "No Status or NoA attribute in P2P Presence Response");
		FUNC2(&msg);
		return;
	}

	if (p2p->cfg->presence_resp) {
		p2p->cfg->presence_resp(p2p->cfg->cb_ctx, sa, *msg.status,
					msg.noa, msg.noa_len);
	}

	if (*msg.status) {
		FUNC0(p2p, "P2P Presence Request was rejected: status %u",
			*msg.status);
		FUNC2(&msg);
		return;
	}

	FUNC0(p2p, "P2P Presence Request was accepted");
	FUNC4(MSG_DEBUG, "P2P: P2P Presence Response - NoA",
		    msg.noa, msg.noa_len);
	/* TODO: process NoA */
	FUNC2(&msg);
}