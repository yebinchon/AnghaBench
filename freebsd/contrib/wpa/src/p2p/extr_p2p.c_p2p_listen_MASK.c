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
struct wpabuf {int dummy; } ;
struct p2p_data {int pending_listen_freq; unsigned int pending_listen_sec; unsigned int pending_listen_usec; scalar_t__ start_after_scan; TYPE_1__* cfg; scalar_t__ p2p_scan_running; } ;
struct TYPE_2__ {scalar_t__ (* start_listen ) (int /*<<< orphan*/ ,int,unsigned int,struct wpabuf*) ;int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  channel; int /*<<< orphan*/  reg_class; } ;

/* Variables and functions */
 scalar_t__ P2P_AFTER_SCAN_CONNECT ; 
 scalar_t__ P2P_AFTER_SCAN_LISTEN ; 
 int /*<<< orphan*/  P2P_LISTEN_ONLY ; 
 struct wpabuf* FUNC0 (struct p2p_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct p2p_data*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct p2p_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,unsigned int,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 

int FUNC6(struct p2p_data *p2p, unsigned int timeout)
{
	int freq;
	struct wpabuf *ies;

	FUNC2(p2p, "Going to listen(only) state");

	if (p2p->pending_listen_freq) {
		/* We have a pending p2p_listen request */
		FUNC2(p2p, "p2p_listen command pending already");
		return -1;
	}

	freq = FUNC1(p2p->cfg->reg_class, p2p->cfg->channel);
	if (freq < 0) {
		FUNC2(p2p, "Unknown regulatory class/channel");
		return -1;
	}

	p2p->pending_listen_sec = timeout / 1000;
	p2p->pending_listen_usec = (timeout % 1000) * 1000;

	if (p2p->p2p_scan_running) {
		if (p2p->start_after_scan == P2P_AFTER_SCAN_CONNECT) {
			FUNC2(p2p, "p2p_scan running - connect is already pending - skip listen");
			return 0;
		}
		FUNC2(p2p, "p2p_scan running - delay start of listen state");
		p2p->start_after_scan = P2P_AFTER_SCAN_LISTEN;
		return 0;
	}

	ies = FUNC0(p2p, NULL, 0);
	if (ies == NULL)
		return -1;

	p2p->pending_listen_freq = freq;

	if (p2p->cfg->start_listen(p2p->cfg->cb_ctx, freq, timeout, ies) < 0) {
		FUNC2(p2p, "Failed to start listen mode");
		p2p->pending_listen_freq = 0;
		FUNC5(ies);
		return -1;
	}
	FUNC5(ies);

	FUNC3(p2p, P2P_LISTEN_ONLY);

	return 0;
}