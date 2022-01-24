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
struct p2p_data {int pending_listen_freq; int max_disc_int; unsigned int min_disc_int; unsigned int max_disc_tu; int pending_listen_usec; TYPE_1__* cfg; scalar_t__ pending_listen_sec; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  r ;
struct TYPE_2__ {int max_listen; scalar_t__ (* start_listen ) (int /*<<< orphan*/ ,int,int,struct wpabuf*) ;int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  channel; int /*<<< orphan*/  reg_class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct wpabuf* FUNC1 (struct p2p_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p2p_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC8(struct p2p_data *p2p, int dev_disc)
{
	unsigned int r, tu;
	int freq;
	struct wpabuf *ies;

	FUNC3(p2p, "Starting short listen state (state=%s)",
		FUNC5(p2p->state));

	if (p2p->pending_listen_freq) {
		/* We have a pending p2p_listen request */
		FUNC3(p2p, "p2p_listen command pending already");
		return;
	}

	freq = FUNC2(p2p->cfg->reg_class, p2p->cfg->channel);
	if (freq < 0) {
		FUNC3(p2p, "Unknown regulatory class/channel");
		return;
	}

	if (FUNC0((u8 *) &r, sizeof(r)) < 0)
		r = 0;
	tu = (r % ((p2p->max_disc_int - p2p->min_disc_int) + 1) +
	      p2p->min_disc_int) * 100;
	if (p2p->max_disc_tu >= 0 && tu > (unsigned int) p2p->max_disc_tu)
		tu = p2p->max_disc_tu;
	if (!dev_disc && tu < 100)
		tu = 100; /* Need to wait in non-device discovery use cases */
	if (p2p->cfg->max_listen && 1024 * tu / 1000 > p2p->cfg->max_listen)
		tu = p2p->cfg->max_listen * 1000 / 1024;

	if (tu == 0) {
		FUNC3(p2p, "Skip listen state since duration was 0 TU");
		FUNC4(p2p, 0, 0);
		return;
	}

	ies = FUNC1(p2p, NULL, 0);
	if (ies == NULL)
		return;

	p2p->pending_listen_freq = freq;
	p2p->pending_listen_sec = 0;
	p2p->pending_listen_usec = 1024 * tu;

	if (p2p->cfg->start_listen(p2p->cfg->cb_ctx, freq, 1024 * tu / 1000,
		    ies) < 0) {
		FUNC3(p2p, "Failed to start listen mode");
		p2p->pending_listen_freq = 0;
	}
	FUNC7(ies);
}