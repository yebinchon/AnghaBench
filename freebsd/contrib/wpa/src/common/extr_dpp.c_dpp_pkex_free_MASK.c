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
struct dpp_pkex {int /*<<< orphan*/  exchange_resp; int /*<<< orphan*/  exchange_req; int /*<<< orphan*/  peer_bootstrap_key; int /*<<< orphan*/  y; int /*<<< orphan*/  x; struct dpp_pkex* code; struct dpp_pkex* identifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_pkex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct dpp_pkex *pkex)
{
	if (!pkex)
		return;

	FUNC1(pkex->identifier);
	FUNC1(pkex->code);
	FUNC0(pkex->x);
	FUNC0(pkex->y);
	FUNC0(pkex->peer_bootstrap_key);
	FUNC2(pkex->exchange_req);
	FUNC2(pkex->exchange_resp);
	FUNC1(pkex);
}