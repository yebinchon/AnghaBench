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
struct wpa_sm {scalar_t__ preauth_eapol; void* scard_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 

void FUNC1(struct wpa_sm *sm, void *scard_ctx)
{
	if (sm == NULL)
		return;
	sm->scard_ctx = scard_ctx;
	if (sm->preauth_eapol)
		FUNC0(sm->preauth_eapol, scard_ctx);
}