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
struct wpa_sm {TYPE_1__* ctx; } ;
typedef  enum wpa_states { ____Placeholder_wpa_states } wpa_states ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* set_state ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct wpa_sm *sm, enum wpa_states state)
{
	FUNC0(sm->ctx->set_state);
	sm->ctx->set_state(sm->ctx->ctx, state);
}