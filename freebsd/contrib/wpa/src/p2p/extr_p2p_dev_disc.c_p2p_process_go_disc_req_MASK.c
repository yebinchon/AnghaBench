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
struct p2p_data {int pending_client_disc_freq; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ (* start_listen ) (int /*<<< orphan*/ ,int,int,struct wpabuf*) ;int /*<<< orphan*/  cb_ctx; } ;

/* Variables and functions */
 struct wpabuf* FUNC0 (struct p2p_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p2p_data*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 

void FUNC4(struct p2p_data *p2p, const u8 *da, const u8 *sa,
			     const u8 *data, size_t len, int rx_freq)
{
	unsigned int tu;
	struct wpabuf *ies;

	FUNC1(p2p, "Received GO Discoverability Request - remain awake for 100 TU");

	ies = FUNC0(p2p, NULL, 0);
	if (ies == NULL)
		return;

	/* Remain awake 100 TU on operating channel */
	p2p->pending_client_disc_freq = rx_freq;
	tu = 100;
	if (p2p->cfg->start_listen(p2p->cfg->cb_ctx, rx_freq, 1024 * tu / 1000,
		    ies) < 0) {
		FUNC1(p2p, "Failed to start listen mode for client discoverability");
	}
	FUNC3(ies);
}