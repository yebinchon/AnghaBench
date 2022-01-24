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
struct wpabuf {int dummy; } ;
struct p2p_data {TYPE_1__* cfg; int /*<<< orphan*/  pending_action_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_NO_PENDING_ACTION ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*) ; 
 scalar_t__ FUNC2 (struct p2p_data*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC6(struct p2p_data *p2p, const u8 *dst,
				      u8 dialog_token, int freq)
{
	struct wpabuf *req;

	req = FUNC0(dialog_token);
	if (req == NULL)
		return;

	p2p->pending_action_state = P2P_NO_PENDING_ACTION;
	if (FUNC2(p2p, freq, dst, p2p->cfg->dev_addr, dst,
			    FUNC4(req), FUNC5(req), 200) < 0)
		FUNC1(p2p, "Failed to send Action frame");

	FUNC3(req);
}