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
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* get_bssid ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct wpa_sm *sm, u8 *bssid)
{
	FUNC0(sm->ctx->get_bssid);
	return sm->ctx->get_bssid(sm->ctx->ctx, bssid);
}